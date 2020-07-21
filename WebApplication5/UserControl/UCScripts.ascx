<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCScripts.ascx.cs" Inherits="WebApplication5.UserControl.UCScripts" %>
<script>
                function myFunction() {
                    // Declare variables
                    var input, filter, ul, li, a, i;
                    input = document.getElementById("mySearch");
                    filter = input.value.toUpperCase();
                    ul = document.getElementById("myMenu");
                    li = ul.getElementsByTagName("li");

                    // Loop through all list items, and hide those who don't match the search query
                    for (i = 0; i < li.length; i++) {
                        a = li[i].getElementsByTagName("a")[0];
                        if (a.innerHTML.toUpperCase().indexOf(filter) > -1) {
                            li[i].style.display = "";
                        } else {
                            li[i].style.display = "none";
                        }
                    }
                }
            </script>
       

    

    <!-- basic scripts -->
    <!--[if !IE]> -->
    <script src="assets/js/jquery-2.1.4.min.js"></script>

    <!-- <![endif]-->
    <!--[if IE]>
    <script src="assets/js/jquery-1.11.3.min.js"></script>
    <![endif]-->
    <script type="text/javascript">
        if ('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
    </script>
    <script src="assets/js/bootstrap.min.js"></script>

    <!-- page specific plugin scripts -->
    <script src="assets/js/jquery.bootstrap-duallistbox.min.js"></script>
    <script src="assets/js/jquery.raty.min.js"></script>
    <script src="assets/js/bootstrap-multiselect.min.js"></script>
    <script src="assets/js/select2.min.js"></script>
    <script src="assets/js/jquery-typeahead.js"></script>

    <!-- ace scripts -->
    <script src="assets/js/ace-elements.min.js"></script>
    <script src="assets/js/ace.min.js"></script>

    <!-- inline scripts related to this page -->
    <script type="text/javascript">
        jQuery(function ($) {
            var demo1 = $('select[name="duallistbox_demo1[]"]').bootstrapDualListbox({ infoTextFiltered: '<span class="label label-purple label-lg">Filtered</span>' });
            var container1 = demo1.bootstrapDualListbox('getContainer');
            container1.find('.btn').addClass('btn-white btn-info btn-bold');

            /**var setRatingColors = function() {
                $(this).find('.star-on-png,.star-half-png').addClass('orange2').removeClass('grey');
                $(this).find('.star-off-png').removeClass('orange2').addClass('grey');
            }*/
            $('.rating').raty({
                'cancel': true,
                'half': true,
                'starType': 'i'
                /**,

                'click': function() {
                    setRatingColors.call(this);
                },
                'mouseover': function() {
                    setRatingColors.call(this);
                },
                'mouseout': function() {
                    setRatingColors.call(this);
                }*/
            })//.find('i:not(.star-raty)').addClass('grey');



            //////////////////
            //select2
            $('.select2').css('width', '200px').select2({ allowClear: true })
            $('#select2-multiple-style .btn').on('click', function (e) {
                var target = $(this).find('input[type=radio]');
                var which = parseInt(target.val());
                if (which == 2) $('.select2').addClass('tag-input-style');
                else $('.select2').removeClass('tag-input-style');
            });

            //////////////////
            $('.multiselect').multiselect({
                enableFiltering: true,
                enableHTML: true,
                buttonClass: 'btn btn-white btn-primary',
                templates: {
                    button: '<button type="button" class="multiselect dropdown-toggle" data-toggle="dropdown"><span class="multiselect-selected-text"></span> &nbsp;<b class="fa fa-caret-down"></b></button>',
                    ul: '<ul class="multiselect-container dropdown-menu"></ul>',
                    filter: '<li class="multiselect-item filter"><div class="input-group"><span class="input-group-addon"><i class="fa fa-search"></i></span><input class="form-control multiselect-search" type="text"></div></li>',
                    filterClearBtn: '<span class="input-group-btn"><button class="btn btn-default btn-white btn-grey multiselect-clear-filter" type="button"><i class="fa fa-times-circle red2"></i></button></span>',
                    li: '<li><a tabindex="0"><label></label></a></li>',
                    divider: '<li class="multiselect-item divider"></li>',
                    liGroup: '<li class="multiselect-item multiselect-group"><label></label></li>'
                }
            });


            ///////////////////

            //typeahead.js
            //example taken from plugin's page at: https://twitter.github.io/typeahead.js/examples/
            var substringMatcher = function (strs) {
                return function findMatches(q, cb) {
                    var matches, substringRegex;

                    // an array that will be populated with substring matches
                    matches = [];

                    // regex used to determine if a string contains the substring `q`
                    substrRegex = new RegExp(q, 'i');

                    // iterate through the pool of strings and for any string that
                    // contains the substring `q`, add it to the `matches` array
                    $.each(strs, function (i, str) {
                        if (substrRegex.test(str)) {
                            // the typeahead jQuery plugin expects suggestions to a
                            // JavaScript object, refer to typeahead docs for more info
                            matches.push({ value: str });
                        }
                    });

                    cb(matches);
                }
            }

            $('input.typeahead').typeahead({
                hint: true,
                highlight: true,
                minLength: 1
            }, {
                    name: 'states',
                    displayKey: 'value',
                    source: substringMatcher(ace.vars['US_STATES']),
                    limit: 10
                });


            ///////////////


            //in ajax mode, remove remaining elements before leaving page
            $(document).one('ajaxloadstart.page', function (e) {
                $('[class*=select2]').remove();
                $('select[name="duallistbox_demo1[]"]').bootstrapDualListbox('destroy');
                $('.rating').raty('destroy');
                $('.multiselect').multiselect('destroy');
            });

        });
    </script>