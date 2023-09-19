<?php include('classes/Slider.php');
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kaliganj Technical School & College</title>
    <link href="https://cdn.jsdelivr.net/npm/daisyui@3.7.5/dist/full.css" rel="stylesheet" type="text/css" />
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.maateen.me/bangla/font.css" rel="stylesheet">

    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.4.1.min.js"></script>
    <script src="assets/js/carosel.js"></script>

    <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.1/flowbite.min.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.1/flowbite.min.js"></script>


    <style>
        .font-bangla {
            font-family: 'Bangla', Arial, sans-serif !important;
        }
    </style>
</head>

<body class="bg-gray-300 font-bangla">

    <header>
        <div class="p-2 bg-purple-600 rounded-t-md lg:px-36 md:px-16"></div>
        <div class="lg:px-36 md:px-16 sliderAx">
            <div id="slider-1" class="container mx-auto">
                <div class="bg-cover bg-top text-white py-24 px-10 object-fill"
                    style="background-image: url(https://images.unsplash.com/photo-1544144433-d50aff500b91?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80)">
                    <p class="text-xl md:text-3xl font-semibold font-bangla">কালিগঞ্জ সরকারি টেকনিক্যাল স্কুল ও কলেজ</p>
                    <p class="text-base md:text-2xl mb-10 leading-none font-bangla">কালিগঞ্জ, লালমনিরহাট</p>
                </div> <!-- container -->
                <br>
            </div>

            <div id="slider-2" class="container mx-auto">
                <div class="bg-cover bg-top text-white py-24 px-10 object-fill"
                    style="background-image: url(https://images.unsplash.com/photo-1544144433-d50aff500b91?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80)">
                    <p class="text-xl md:text-3xl font-semibold font-bangla">কালিগঞ্জ সরকারি টেকনিক্যাল স্কুল ও কলেজ</p>
                    <p class="text-base md:text-2xl mb-10 leading-none font-bangla">কালিগঞ্জ, লালমনিরহাট</p>
                </div> <!-- container -->
                <br>
            </div>
            <div class="flex justify-between w-12 mx-auto pb-2">
                <button id="sButton1" onclick="sliderButton1()" class="bg-purple-400 rounded-full w-4 pb-2 "></button>
                <button id="sButton2" onclick="sliderButton2() " class="bg-purple-400 rounded-full w-4 p-2"></button>
            </div>
        </div>

        <nav class="md:px-36 lg:px-36 bg-gray-300 border-gray-200 dark:bg-gray-900">
            <div class="max-w-screen-xl flex flex-wrap items-center justify-between mx-auto p-4">
                <a href="" class="flex items-center">
                    <img src="files/gallary/285972875 - logo-rounded.png" class="h-8 mr-3" alt="Flowbite Logo" />
                    <span class="self-center text-2xl font-semibold whitespace-nowrap dark:text-white">কালিগঞ্জ টিএসসি,
                        লালমনিরহাট </span>
                </a>
                <button data-collapse-toggle="navbar-default" type="button"
                    class="inline-flex items-center p-2 w-10 h-10 justify-center text-sm text-gray-500 rounded-lg md:hidden hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-gray-200 dark:text-gray-400 dark:hover:bg-gray-700 dark:focus:ring-gray-600"
                    aria-controls="navbar-default" aria-expanded="false">
                    <span class="sr-only">Open main menu</span>
                    <svg class="w-5 h-5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none"
                        viewBox="0 0 17 14">
                        <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                            d="M1 1h15M1 7h15M1 13h15" />
                    </svg>
                </button>
                <div class="hidden w-full md:block md:w-auto" id="navbar-default">
                    <ul
                        class="text-lg font-bold flex flex-col p-4 md:p-0 mt-4 border border-gray-100 rounded-lg bg-gray-50 md:flex-row md:space-x-8 md:mt-0 md:border-0">
                        <li>
                            <a href="#"
                                class="block py-2 pl-3 pr-4 text-white bg-blue-700 rounded md:bg-transparent md:text-blue-700 md:p-0 dark:text-white "
                                aria-current="page">হোম</a>
                        </li>
                        <li>
                            <a href="#"
                                class="block py-2 pl-3 pr-4 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:border-0 md:hover:text-blue-700 md:p-0 dark:text-white md:dark:hover:text-blue-500 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent">আমাদের
                                সম্পর্কে</a>
                        </li>
                        <li>
                            <a href="#"
                                class="block py-2 pl-3 pr-4 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:border-0 md:hover:text-blue-700 md:p-0 dark:text-white md:dark:hover:text-blue-500 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent">ট্রেড</a>
                        </li>
                        <li>
                            <a href="#"
                                class="block py-2 pl-3 pr-4 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:border-0 md:hover:text-blue-700 md:p-0 dark:text-white md:dark:hover:text-blue-500 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent">নোটিশ</a>
                        </li>
                        <li>
                            <a href="#"
                                class="block py-2 pl-3 pr-4 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:border-0 md:hover:text-blue-700 md:p-0 dark:text-white md:dark:hover:text-blue-500 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent">গ্যালারি</a>
                        </li>
                        <li>
                            <a href="#"
                                class="block py-2 pl-3 pr-4 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:border-0 md:hover:text-blue-700 md:p-0 dark:text-white md:dark:hover:text-blue-500 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent">যোগাযোগ</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <main class="md:flex md:px-36 lg:px-36 gap-4">
        <div class="md:w-3/4">
            <div class="border-solid border-2 border-indigo-600 rounded-md py-2 px-1 mb-4">
                Notice:
            </div>

            <div class="border-solid border-2 border-indigo-600 rounded-md py-2 px-1 mb-4">
                Notice:
            </div>
            <div
                class="grid grid-cols-1 gap-4 md:grid-cols-1 lg:grid-cols-2 border-solid border-2 border-indigo-600 rounded-md py-2 px-1 mb-4">


                <div class="card card-side bg-base-100 shadow-xl">
                    <figure><img src="files/gallary/16684881 - 1.jpeg" alt="Movie" class="w-24 h-24" /></figure>
                    <div class="card-body">
                        <h2 class="card-title">New movie is released!</h2>
                        <p>Click the button to watch on Jetflix app.</p>
                        <div class="card-actions justify-end">
                            <button class="btn btn-primary">Watch</button>
                        </div>
                    </div>
                </div>

                <div class="card card-side bg-base-100 shadow-xl">
                    <figure><img src="files/gallary/16684881 - 1.jpeg" alt="Movie" class="w-24 h-24" /></figure>
                    <div class="card-body">
                        <h2 class="card-title">New movie is released!</h2>
                        <p>Click the button to watch on Jetflix app.</p>
                        <div class="card-actions justify-end">
                            <button class="btn btn-primary">Watch</button>
                        </div>
                    </div>
                </div>

                <div class="card card-side bg-base-100 shadow-xl">
                    <figure><img src="files/gallary/16684881 - 1.jpeg" alt="Movie" class="w-24 h-24" /></figure>
                    <div class="card-body">
                        <h2 class="card-title">New movie is released!</h2>
                        <p>Click the button to watch on Jetflix app.</p>
                        <div class="card-actions justify-end">
                            <button class="btn btn-primary">Watch</button>
                        </div>
                    </div>
                </div>

                <div class="card card-side bg-base-100 shadow-xl">
                    <figure><img src="files/gallary/16684881 - 1.jpeg" alt="Movie" class="w-24 h-24" /></figure>
                    <div class="card-body">
                        <h2 class="card-title">New movie is released!</h2>
                        <p>Click the button to watch on Jetflix app.</p>
                        <div class="card-actions justify-end">
                            <button class="btn btn-primary">Watch</button>
                        </div>
                    </div>
                </div>

                <div class="card card-side bg-base-100 shadow-xl">
                    <figure><img src="files/gallary/16684881 - 1.jpeg" alt="Movie" class="w-24 h-24" /></figure>
                    <div class="card-body">
                        <h2 class="card-title">New movie is released!</h2>
                        <p>Click the button to watch on Jetflix app.</p>
                        <div class="card-actions justify-end">
                            <button class="btn btn-primary">Watch</button>
                        </div>
                    </div>
                </div>



            </div>


        </div>
        <div class="grid grid-cols-1 gap-4 md:w-1/4 h-8">

            <div class="card bg-base-100 shadow-xl">
                <p class="text-xl font-bold text-center p-2 bg-purple-400 rounded-t-md">মহাপরিচালক</p>
                <figure><img src="files/gallary/Md. Mohsin Add Sec.jpg" alt="Movie" class="border-0 w-32 h-40" /></figure>
                <div class="text-center">
                    <h2 class="text-xl font-bold">মোঃ মহসিন</h2>
                    <p>মহাপরিচালক<br>কারিগরি শিক্ষা অধিদপ্তর</p>
                </div>
            </div>

            <div class="card bg-base-100 shadow-xl">
                <p class="text-xl font-bold text-center p-2 bg-purple-400 rounded-t-md">অধ্যক্ষ</p>
                <figure><img src="files/gallary/Principal-Final PIC.jpg" alt="Movie" class="border-0 w-32 h-40" /></figure>
                <div class="text-center">
                    <h2 class="text-xl font-bold">মোঃ শরিফুল ইসলাম</h2>
                    <p>অধ্যক্ষ<br>কালিগঞ্জ সরকারি টেকনিক্যাল স্কুল ও কলেজ</p>
                </div>
            </div>


        </div>
    </main>

    <script>
        $(document).ready(function () {
            $('.slider').slider();
        });
    </script>

</body>

</html>