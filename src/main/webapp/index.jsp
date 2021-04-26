<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Portfolio dashboard</title>
    <link
            href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap"
            rel="stylesheet"
    />
    <link rel="stylesheet" href="./styles/normalize.css"/>
    <link rel="stylesheet" href="./styles/index.css"/>
</head>
<body
">
<div class="wrapper">
    <nav class="nav">
        <ul class="nav__list" role="menubar">
            <li class="nav__item nav__item--isActive">
                <a
                        href="#"
                        class="nav__link focus--box-shadow"
                        role="menuitem"
                        aria-label="Home"
                >
                    <svg
                            class="nav__icon"
                            xmlns="http://www.w3.org/2000/svg"
                            viewBox="0 0 24 24"
                            role="presentation"
                    >
                        <path
                                fill="#6563ff"
                                d="M20,8h0L14,2.74a3,3,0,0,0-4,0L4,8a3,3,0,0,0-1,2.26V19a3,3,0,0,0,3,3H18a3,3,0,0,0,3-3V10.25A3,3,0,0,0,20,8ZM14,20H10V15a1,1,0,0,1,1-1h2a1,1,0,0,1,1,1Zm5-1a1,1,0,0,1-1,1H16V15a3,3,0,0,0-3-3H11a3,3,0,0,0-3,3v5H6a1,1,0,0,1-1-1V10.25a1,1,0,0,1,.34-.75l6-5.25a1,1,0,0,1,1.32,0l6,5.25a1,1,0,0,1,.34.75Z"
                        />
                    </svg>
                </a>
            </li>
            <li class="nav__item">
                <a
                        href="#"
                        class="nav__link focus--box-shadow"
                        role="menuitem"
                        aria-label="Favorite projects"
                >
                    <svg
                            class="nav__icon"
                            xmlns="http://www.w3.org/2000/svg"
                            viewBox="0 0 24 24"
                            role="presentation"
                    >
                        <path
                                d="M22,9.67A1,1,0,0,0,21.14,9l-5.69-.83L12.9,3a1,1,0,0,0-1.8,0L8.55,8.16,2.86,9a1,1,0,0,0-.81.68,1,1,0,0,0,.25,1l4.13,4-1,5.68A1,1,0,0,0,6.9,21.44L12,18.77l5.1,2.67a.93.93,0,0,0,.46.12,1,1,0,0,0,.59-.19,1,1,0,0,0,.4-1l-1-5.68,4.13-4A1,1,0,0,0,22,9.67Zm-6.15,4a1,1,0,0,0-.29.88l.72,4.2-3.76-2a1.06,1.06,0,0,0-.94,0l-3.76,2,.72-4.2a1,1,0,0,0-.29-.88l-3-3,4.21-.61a1,1,0,0,0,.76-.55L12,5.7l1.88,3.82a1,1,0,0,0,.76.55l4.21.61Z"
                        />
                    </svg>
                </a>
            </li>
            <li class="nav__item">
                <a
                        href="#"
                        class="nav__link focus--box-shadow"
                        role="menuitem"
                        aria-label="Informational messages"
                >
                    <svg
                            class="nav__icon"
                            xmlns="http://www.w3.org/2000/svg"
                            viewBox="0 0 24 24"
                            role="presentation"
                    >
                        <path
                                d="M12,11a1,1,0,0,0-1,1v3a1,1,0,0,0,2,0V12A1,1,0,0,0,12,11Zm0-3a1,1,0,1,0,1,1A1,1,0,0,0,12,8Zm0-6A10,10,0,0,0,2,12a9.89,9.89,0,0,0,2.26,6.33l-2,2a1,1,0,0,0-.21,1.09A1,1,0,0,0,3,22h9A10,10,0,0,0,12,2Zm0,18H5.41l.93-.93a1,1,0,0,0,.3-.71,1,1,0,0,0-.3-.7A8,8,0,1,1,12,20Z"
                        />
                    </svg>
                </a>
            </li>
            <li class="nav__item">
                <a
                        href="#"
                        class="nav__link focus--box-shadow"
                        role="menuitem"
                        aria-label="Collections"
                >
                    <svg
                            class="nav__icon"
                            xmlns="http://www.w3.org/2000/svg"
                            viewBox="0 0 24 24"
                            role="presentation"
                    >
                        <path
                                d="M2.5,10.56l9,5.2a1,1,0,0,0,1,0l9-5.2a1,1,0,0,0,0-1.73l-9-5.2a1,1,0,0,0-1,0l-9,5.2a1,1,0,0,0,0,1.73ZM12,5.65l7,4-7,4.05L5,9.69Zm8.5,7.79L12,18.35,3.5,13.44a1,1,0,0,0-1.37.36,1,1,0,0,0,.37,1.37l9,5.2a1,1,0,0,0,1,0l9-5.2a1,1,0,0,0,.37-1.37A1,1,0,0,0,20.5,13.44Z"
                        />
                    </svg>
                </a>
            </li>
            <li class="nav__item">
                <a
                        href="#"
                        class="nav__link focus--box-shadow"
                        role="menuitem"
                        aria-label="Analytics"
                >
                    <svg
                            class="nav__icon"
                            xmlns="http://www.w3.org/2000/svg"
                            viewBox="0 0 24 24"
                            role="presentation"
                    >
                        <path
                                d="M6,13H2a1,1,0,0,0-1,1v8a1,1,0,0,0,1,1H6a1,1,0,0,0,1-1V14A1,1,0,0,0,6,13ZM5,21H3V15H5ZM22,9H18a1,1,0,0,0-1,1V22a1,1,0,0,0,1,1h4a1,1,0,0,0,1-1V10A1,1,0,0,0,22,9ZM21,21H19V11h2ZM14,1H10A1,1,0,0,0,9,2V22a1,1,0,0,0,1,1h4a1,1,0,0,0,1-1V2A1,1,0,0,0,14,1ZM13,21H11V3h2Z"
                        />
                    </svg>
                </a>
            </li>
        </ul>
    </nav>
    <main class="main">
        <header class="header">
            <marquee><b style="color: red">Emergency Contact No's !!! Toll Free - 1075 or Call - 91-11-23978046</b>
            </marquee>
            <br><br>
            <div class="header__wrapper">
                <form action="" class="search">
                    <button class="search__button focus--box-shadow" type="button" onclick="getstatewisedata();">
                        <svg
                                class="search__icon"
                                xmlns="http://www.w3.org/2000/svg"
                                viewBox="0 0 24 24"
                        >
                            <path
                                    d="M21.71,20.29,18,16.61A9,9,0,1,0,16.61,18l3.68,3.68a1,1,0,0,0,1.42,0A1,1,0,0,0,21.71,20.29ZM11,18a7,7,0,1,1,7-7A7,7,0,0,1,11,18Z"
                            />
                        </svg>
                    </button>
                    <input
                            class="search__input focus--box-shadow"
                            type="text" name="name" id="name"
                            placeholder="Statewise search"
                    />
                </form>
                <div class="profile">
                    <button class="profile__button">
                        <span class="profile__name">Covid India DashBoard</span>
                        <img
                                class="profile__img"
                                src="./img/india2.png"
                                alt="Profile picture"
                                loading="lazy"
                        />
                    </button>
                </div>
            </div>
        </header>
        <section class="section">
            <header class="section__header">
                <h2 class="team__name__header">Covid Data</h2>
                <a href="#" class="team__name__header">Emergency Contact Number's</a>
            </header>
            <ul class="team">
                <li class="team__item">
                    <a class="team__link focus--box-shadow" href="#">
                        <div class="team__header">
                            <ul class="photo">
                                <li class="photo__item">
                                    <img
                                            src="./img/covidred.png"
                                            alt="Yulia's photo"
                                    />
                                </li>
                                <%--<li class="photo__item">
                                    <img
                                            src="./img/raychan-9UkAHVs5y7Y-unsplash.jpg"
                                            alt="Yulia's photo"
                                    />
                                </li>
                                <li class="photo__item">
                                    <img
                                            src="./img/seth-doyle-uJ8LNVCBjFQ-unsplash.jpg"
                                            alt="Jessica's photo"
                                    />
                                </li>--%>
                            </ul>
                            <button
                                    class="setting setting--absolute focus--box-shadow"
                                    type="button"
                            >
                                <%--  <svg
                                          enable-background="new 0 0 515.555 515.555"
                                          height="512"
                                          viewBox="0 0 515.555 515.555"
                                          width="512"
                                          xmlns="http://www.w3.org/2000/svg"
                                  >--%>
                                <path
                                        d="m303.347 18.875c25.167 25.167 25.167 65.971 0 91.138s-65.971 25.167-91.138 0-25.167-65.971 0-91.138c25.166-25.167 65.97-25.167 91.138 0"
                                />
                                <path
                                        d="m303.347 212.209c25.167 25.167 25.167 65.971 0 91.138s-65.971 25.167-91.138 0-25.167-65.971 0-91.138c25.166-25.167 65.97-25.167 91.138 0"
                                />
                                <path
                                        d="m303.347 405.541c25.167 25.167 25.167 65.971 0 91.138s-65.971 25.167-91.138 0-25.167-65.971 0-91.138c25.166-25.167 65.97-25.167 91.138 0"
                                />
                                </svg>
                            </button>
                        </div>
                        <div class="team__inform">
                            <p class="team__name">Total <br>Cases</p>
                            <p>${totalcasesindia}</p>
                        </div>
                    </a>
                </li>
                <li class="team__item">
                    <a class="team__link focus--box-shadow" href="#">
                        <div class="team__header">
                            <ul class="photo">
                                <%--<li class="photo__item">
                                    <span class="photo__substrate">+6</span>
                                </li>--%>
                                <li class="photo__item">
                                    <img
                                            src="./img/covidred.png"
                                            alt="Yulia's photo"
                                    />
                                </li>
                                <%--<li class="photo__item">
                                    <img
                                            src="./img/seth-doyle-uJ8LNVCBjFQ-unsplash.jpg"
                                            alt="Jessica's photo"
                                    />
                                </li>--%>
                            </ul>
                            <button
                                    class="setting setting--absolute focus--box-shadow"
                                    type="button"
                            >
                                <%-- <svg
                                         enable-background="new 0 0 515.555 515.555"
                                         height="512"
                                         viewBox="0 0 515.555 515.555"
                                         width="512"
                                         xmlns="http://www.w3.org/2000/svg"
                                 >--%>
                                <path
                                        d="m303.347 18.875c25.167 25.167 25.167 65.971 0 91.138s-65.971 25.167-91.138 0-25.167-65.971 0-91.138c25.166-25.167 65.97-25.167 91.138 0"
                                />
                                <path
                                        d="m303.347 212.209c25.167 25.167 25.167 65.971 0 91.138s-65.971 25.167-91.138 0-25.167-65.971 0-91.138c25.166-25.167 65.97-25.167 91.138 0"
                                />
                                <path
                                        d="m303.347 405.541c25.167 25.167 25.167 65.971 0 91.138s-65.971 25.167-91.138 0-25.167-65.971 0-91.138c25.166-25.167 65.97-25.167 91.138 0"
                                />
                                </svg>
                            </button>
                        </div>
                        <div class="team__inform">
                            <p class="team__name">Total Active Cases</p>
                            <p>${totalconfirmed}</p>
                        </div>
                    </a>
                </li>
                <li class="team__item">
                    <a class="team__link focus--box-shadow" href="#">
                        <div class="team__header">
                            <ul class="photo">
                                <li class="photo__item">
                                    <span class="photo__substrate">+6</span>
                                </li>
                                <li class="photo__item">
                                    <img
                                            src="./img/raychan-9UkAHVs5y7Y-unsplash.jpg"
                                            alt="Yulia's photo"
                                    />
                                </li>
                                <li class="photo__item">
                                    <img
                                            src="./img/covidgreen.jpeg"
                                            alt="Covid Green"
                                    />
                                </li>
                            </ul>
                            <button
                                    class="setting setting--absolute focus--box-shadow"
                                    type="button"
                            >
                                <%-- <svg
                                         enable-background="new 0 0 515.555 515.555"
                                         height="512"
                                         viewBox="0 0 515.555 515.555"
                                         width="512"
                                         xmlns="http://www.w3.org/2000/svg"
                                 >--%>
                                <path
                                        d="m303.347 18.875c25.167 25.167 25.167 65.971 0 91.138s-65.971 25.167-91.138 0-25.167-65.971 0-91.138c25.166-25.167 65.97-25.167 91.138 0"
                                />
                                <path
                                        d="m303.347 212.209c25.167 25.167 25.167 65.971 0 91.138s-65.971 25.167-91.138 0-25.167-65.971 0-91.138c25.166-25.167 65.97-25.167 91.138 0"
                                />
                                <path
                                        d="m303.347 405.541c25.167 25.167 25.167 65.971 0 91.138s-65.971 25.167-91.138 0-25.167-65.971 0-91.138c25.166-25.167 65.97-25.167 91.138 0"
                                />
                                </svg>
                            </button>
                        </div>
                        <div class="team__inform">
                            <p class="team__name">Total Discharged</p>
                            <p>${totaldischarged}</p>
                        </div>
                    </a>
                </li>
                <li class="team__item">
                    <a class="team__link focus--box-shadow" href="#">
                        <div class="team__header">
                            <ul class="photo">
                                <%-- <li class="photo__item">
                                     <span class="photo__substrate">+6</span>
                                 </li>--%>
                                <li class="photo__item">
                                    <img
                                            src="./img/covidgreen.jpeg"
                                            alt="Covid Green"
                                    />
                                </li>
                                <%--<li class="photo__item">
                                    <img
                                            src="./img/seth-doyle-uJ8LNVCBjFQ-unsplash.jpg"
                                            alt="Jessica's photo"
                                    />
                                </li>--%>
                            </ul>
                            <button
                                    class="setting setting--absolute focus--box-shadow"
                                    type="button"
                            >
                                <%--<svg
                                        enable-background="new 0 0 515.555 515.555"
                                        height="512"
                                        viewBox="0 0 515.555 515.555"
                                        width="512"
                                        xmlns="http://www.w3.org/2000/svg"
                                >--%>
                                <path
                                        d="m303.347 18.875c25.167 25.167 25.167 65.971 0 91.138s-65.971 25.167-91.138 0-25.167-65.971 0-91.138c25.166-25.167 65.97-25.167 91.138 0"
                                />
                                <path
                                        d="m303.347 212.209c25.167 25.167 25.167 65.971 0 91.138s-65.971 25.167-91.138 0-25.167-65.971 0-91.138c25.166-25.167 65.97-25.167 91.138 0"
                                />
                                <path
                                        d="m303.347 405.541c25.167 25.167 25.167 65.971 0 91.138s-65.971 25.167-91.138 0-25.167-65.971 0-91.138c25.166-25.167 65.97-25.167 91.138 0"
                                />
                                </svg>
                            </button>
                        </div>
                        <div class="team__inform">
                            <p class="team__name">Total Discharged</p>
                            <p>${totaldischarged}</p>
                        </div>
                    </a>
                </li>
                <li class="team__item">
                    <a class="team__link focus--box-shadow" href="#">
                        <div class="team__header">
                            <ul class="photo">
                                <%-- <li class="photo__item">
                                     <span class="photo__substrate">+6</span>
                                 </li>--%>
                                <li class="photo__item">
                                    <img
                                            src="./img/covidred.png"
                                            alt="Covid Red"
                                    />
                                </li>
                                <%--<li class="photo__item">
                                    <img
                                            src="./img/seth-doyle-uJ8LNVCBjFQ-unsplash.jpg"
                                            alt="Jessica's photo"
                                    />
                                </li>--%>
                            </ul>
                            <button
                                    class="setting setting--absolute focus--box-shadow"
                                    type="button"
                            >
                                <%--<svg
                                        enable-background="new 0 0 515.555 515.555"
                                        height="512"
                                        viewBox="0 0 515.555 515.555"
                                        width="512"
                                        xmlns="http://www.w3.org/2000/svg"
                                >--%>
                                <path
                                        d="m303.347 18.875c25.167 25.167 25.167 65.971 0 91.138s-65.971 25.167-91.138 0-25.167-65.971 0-91.138c25.166-25.167 65.97-25.167 91.138 0"
                                />
                                <path
                                        d="m303.347 212.209c25.167 25.167 25.167 65.971 0 91.138s-65.971 25.167-91.138 0-25.167-65.971 0-91.138c25.166-25.167 65.97-25.167 91.138 0"
                                />
                                <path
                                        d="m303.347 405.541c25.167 25.167 25.167 65.971 0 91.138s-65.971 25.167-91.138 0-25.167-65.971 0-91.138c25.166-25.167 65.97-25.167 91.138 0"
                                />
                                </svg>
                            </button>
                        </div>
                        <div class="team__inform">
                            <p class="team__name">Total <br>Deaths</p>
                            <p>${totaldeaths}</p>
                        </div>
                    </a>
                </li>
            </ul>
        </section>
        <section class="section">
            <header class="section__header">
                <h2 class="team__name__header">Others Notifications</h2>
                <div class="section__control">
                    <button
                            class="section__button focus--box-shadow"
                            type="button"
                            aria-label="Filter projects"
                    >
                        <path
                                d="M20,8.18V3a1,1,0,0,0-2,0V8.18a3,3,0,0,0,0,5.64V21a1,1,0,0,0,2,0V13.82a3,3,0,0,0,0-5.64ZM19,12a1,1,0,1,1,1-1A1,1,0,0,1,19,12Zm-6,2.18V3a1,1,0,0,0-2,0V14.18a3,3,0,0,0,0,5.64V21a1,1,0,0,0,2,0V19.82a3,3,0,0,0,0-5.64ZM12,18a1,1,0,1,1,1-1A1,1,0,0,1,12,18ZM6,6.18V3A1,1,0,0,0,4,3V6.18a3,3,0,0,0,0,5.64V21a1,1,0,0,0,2,0V11.82A3,3,0,0,0,6,6.18ZM5,10A1,1,0,1,1,6,9,1,1,0,0,1,5,10Z"
                        />
                        </svg>
                    </button>
                    <button
                            class="section__button section__button--painted focus--box-shadow"
                            type="button"
                            aria-label="Add New project"
                    >

                        <path
                                d="M19,11H13V5a1,1,0,0,0-2,0v6H5a1,1,0,0,0,0,2h6v6a1,1,0,0,0,2,0V13h6a1,1,0,0,0,0-2Z"
                        />
                        </svg>
                    </button>
                </div>
            </header>
            <ul class="project">
                <li class="project__item">
                    <a href="#" class="project__link focus--box-shadow">
                        <div class="project__wrapper">
                            <div class="project__element project__icon">
                                <div
                                        class="icon icon--viking"
                                        aria-label="Icon of the 'Showcase Design' project"
                                >
                                    <svg
                                            xmlns="http://www.w3.org/2000/svg"
                                            viewBox="0 0 24 24"
                                            role="presentation"
                                    >
                                        <path
                                                d="M7,10H9A1,1,0,0,0,9,8H7a1,1,0,0,0,0,2ZM21,4H13V3a1,1,0,0,0-2,0V4H3A1,1,0,0,0,2,5V15a3,3,0,0,0,3,3H9.59l-2.3,2.29a1,1,0,0,0,0,1.42,1,1,0,0,0,1.42,0L11,19.41V21a1,1,0,0,0,2,0V19.41l2.29,2.3a1,1,0,0,0,1.42,0,1,1,0,0,0,0-1.42L14.41,18H19a3,3,0,0,0,3-3V5A1,1,0,0,0,21,4ZM20,15a1,1,0,0,1-1,1H5a1,1,0,0,1-1-1V6H20ZM7,14h6a1,1,0,0,0,0-2H7a1,1,0,0,0,0,2Z"
                                        />
                                    </svg>
                                </div>
                            </div>
                            <div class="project__element project__inform">
                    <span class="project__inform-name"
                    >Total Bed's Count</span
                    >
                            </div>
                            <%--  <div class="project__element project__photo">
                                  <ul class="photo">
                                      <li class="photo__item">
                                          <span class="photo__substrate">+2</span>
                                      </li>
                                      <li class="photo__item">
                                          <img
                                                  src="./img/julian-wan-WNoLnJo7tS8-unsplash.jpg"
                                                  alt="Jack's photo"
                                          />
                                      </li>
                                      <li class="photo__item">
                                          <img
                                                  src="./img/seth-doyle-uJ8LNVCBjFQ-unsplash.jpg"
                                                  alt="Jessica's photo"
                                          />
                                      </li>
                                  </ul>
                              </div>--%>
                            <div class="project__element project__date">
                                <time class="date" datetime="2020-05-05T10:00:00"
                                >05 May, 2020
                                </time
                                >
                            </div>
                            <div class="project__element project__status">
                                <span class="status status--published">8</span>
                            </div>
                            <div class="project__element project__setting">
                                <button
                                        class="setting setting--rotate focus--box-shadow"
                                        type="button"
                                >
                                    <svg
                                            enable-background="new 0 0 515.555 515.555"
                                            height="512"
                                            viewBox="0 0 515.555 515.555"
                                            width="512"
                                            xmlns="http://www.w3.org/2000/svg"
                                    >
                                        <path
                                                d="m303.347 18.875c25.167 25.167 25.167 65.971 0 91.138s-65.971 25.167-91.138 0-25.167-65.971 0-91.138c25.166-25.167 65.97-25.167 91.138 0"
                                        />
                                        <path
                                                d="m303.347 212.209c25.167 25.167 25.167 65.971 0 91.138s-65.971 25.167-91.138 0-25.167-65.971 0-91.138c25.166-25.167 65.97-25.167 91.138 0"
                                        />
                                        <path
                                                d="m303.347 405.541c25.167 25.167 25.167 65.971 0 91.138s-65.971 25.167-91.138 0-25.167-65.971 0-91.138c25.166-25.167 65.97-25.167 91.138 0"
                                        />
                                    </svg>
                                </button>
                            </div>
                        </div>
                    </a>
                </li>
                <li class="project__item">
                    <a href="#" class="project__link focus--box-shadow">
                        <div class="project__wrapper">
                            <div class="project__element project__icon">
                                <div
                                        class="icon icon--rajah"
                                        aria-label="Icon for the project 'Book cover design'"
                                >
                                    <svg
                                            xmlns="http://www.w3.org/2000/svg"
                                            viewBox="0 0 24 24"
                                            role="presentation"
                                    >
                                        <path
                                                d="M15,6H9A1,1,0,0,0,8,7v4a1,1,0,0,0,1,1h6a1,1,0,0,0,1-1V7A1,1,0,0,0,15,6Zm-1,4H10V8h4Zm3-8H5A1,1,0,0,0,4,3V21a1,1,0,0,0,1,1H17a3,3,0,0,0,3-3V5A3,3,0,0,0,17,2Zm1,17a1,1,0,0,1-1,1H6V4H17a1,1,0,0,1,1,1Z"
                                        />
                                    </svg>
                                </div>
                            </div>
                            <div class="project__element project__inform">
                                <span class="project__inform-name">Book cover design</span>
                            </div>
                            <div class="project__element project__photo">
                                <ul class="photo">
                                    <li class="photo__item">
                                        <img
                                                src="./img/seth-doyle-uJ8LNVCBjFQ-unsplash.jpg"
                                                alt="Jessica's photo"
                                        />
                                    </li>
                                </ul>
                            </div>
                            <div class="project__element project__date">
                                <time class="date" datetime="2020-05-05T10:00:00"
                                >13 February, 2020
                                </time
                                >
                            </div>
                            <div class="project__element project__status">
                                <span class="status status--published">Published</span>
                            </div>
                            <div class="project__element project__setting">
                                <button
                                        class="setting setting--rotate focus--box-shadow"
                                        type="button"
                                >
                                    <svg
                                            enable-background="new 0 0 515.555 515.555"
                                            height="512"
                                            viewBox="0 0 515.555 515.555"
                                            width="512"
                                            xmlns="http://www.w3.org/2000/svg"
                                    >
                                        <path
                                                d="m303.347 18.875c25.167 25.167 25.167 65.971 0 91.138s-65.971 25.167-91.138 0-25.167-65.971 0-91.138c25.166-25.167 65.97-25.167 91.138 0"
                                        />
                                        <path
                                                d="m303.347 212.209c25.167 25.167 25.167 65.971 0 91.138s-65.971 25.167-91.138 0-25.167-65.971 0-91.138c25.166-25.167 65.97-25.167 91.138 0"
                                        />
                                        <path
                                                d="m303.347 405.541c25.167 25.167 25.167 65.971 0 91.138s-65.971 25.167-91.138 0-25.167-65.971 0-91.138c25.166-25.167 65.97-25.167 91.138 0"
                                        />
                                    </svg>
                                </button>
                            </div>
                        </div>
                    </a>
                </li>
                <li class="project__item">
                    <a href="#" class="project__link focus--box-shadow">
                        <div class="project__wrapper">
                            <div class="project__element project__icon">
                                <div
                                        class="icon icon--viking"
                                        aria-label="Icon for the project 'Book cover design'"
                                >
                                    <svg
                                            xmlns="http://www.w3.org/2000/svg"
                                            viewBox="0 0 24 24"
                                            role="presentation"
                                    >
                                        <path
                                                d="M14,18a1,1,0,0,0,1-1V15a1,1,0,0,0-2,0v2A1,1,0,0,0,14,18Zm-4,0a1,1,0,0,0,1-1V15a1,1,0,0,0-2,0v2A1,1,0,0,0,10,18ZM19,6H17.62L15.89,2.55a1,1,0,1,0-1.78.9L15.38,6H8.62L9.89,3.45a1,1,0,0,0-1.78-.9L6.38,6H5a3,3,0,0,0-.92,5.84l.74,7.46a3,3,0,0,0,3,2.7h8.38a3,3,0,0,0,3-2.7l.74-7.46A3,3,0,0,0,19,6ZM17.19,19.1a1,1,0,0,1-1,.9H7.81a1,1,0,0,1-1-.9L6.1,12H17.9ZM19,10H5A1,1,0,0,1,5,8H19a1,1,0,0,1,0,2Z"
                                        />
                                    </svg>
                                </div>
                            </div>
                            <div class="project__element project__inform">
                    <span class="project__inform-name"
                    >Logo redesign for eyeglass store</span
                    >
                            </div>
                            <div class="project__element project__photo">
                                <ul class="photo">
                                    <li class="photo__item">
                                        <img
                                                src="./img/seth-doyle-uJ8LNVCBjFQ-unsplash.jpg"
                                                alt="Jessica's photo"
                                        />
                                    </li>
                                </ul>
                            </div>
                            <div class="project__element project__date">
                                <time class="date" datetime="2020-05-05T10:00:00"
                                >01 February, 2020
                                </time
                                >
                            </div>
                            <div class="project__element project__status">
                                <span class="status status--in-work">In work</span>
                            </div>
                            <div class="project__element project__setting">
                                <button
                                        class="setting setting--rotate focus--box-shadow"
                                        type="button"
                                >
                                    <svg
                                            enable-background="new 0 0 515.555 515.555"
                                            height="512"
                                            viewBox="0 0 515.555 515.555"
                                            width="512"
                                            xmlns="http://www.w3.org/2000/svg"
                                    >
                                        <path
                                                d="m303.347 18.875c25.167 25.167 25.167 65.971 0 91.138s-65.971 25.167-91.138 0-25.167-65.971 0-91.138c25.166-25.167 65.97-25.167 91.138 0"
                                        />
                                        <path
                                                d="m303.347 212.209c25.167 25.167 25.167 65.971 0 91.138s-65.971 25.167-91.138 0-25.167-65.971 0-91.138c25.166-25.167 65.97-25.167 91.138 0"
                                        />
                                        <path
                                                d="m303.347 405.541c25.167 25.167 25.167 65.971 0 91.138s-65.971 25.167-91.138 0-25.167-65.971 0-91.138c25.166-25.167 65.97-25.167 91.138 0"
                                        />
                                    </svg>
                                </button>
                            </div>
                        </div>
                    </a>
                </li>
            </ul>
        </section>
    </main>
    <aside class="aside">
        <section class="section">
            <div class="aside__control">
                <button
                        class="aside__button focus--box-shadow"
                        type="button"
                        aria-label="Close profile settings"
                >
                    <svg
                            xmlns="http://www.w3.org/2000/svg"
                            viewBox="0 0 24 24"
                            role="presentation"
                    >
                        <path
                                d="M17,11H9.41l3.3-3.29a1,1,0,1,0-1.42-1.42l-5,5a1,1,0,0,0-.21.33,1,1,0,0,0,0,.76,1,1,0,0,0,.21.33l5,5a1,1,0,0,0,1.42,0,1,1,0,0,0,0-1.42L9.41,13H17a1,1,0,0,0,0-2Z"
                        />
                    </svg>
                </button>
                <button
                        class="aside__button aside__button--notification focus--box-shadow"
                        type="button"
                        aria-label="You have new feedback"
                >
                    <svg
                            xmlns="http://www.w3.org/2000/svg"
                            viewBox="0 0 24 24"
                            role="presentation"
                    >
                        <path
                                d="M18,13.18V10a6,6,0,0,0-5-5.91V3a1,1,0,0,0-2,0V4.09A6,6,0,0,0,6,10v3.18A3,3,0,0,0,4,16v2a1,1,0,0,0,1,1H8.14a4,4,0,0,0,7.72,0H19a1,1,0,0,0,1-1V16A3,3,0,0,0,18,13.18ZM8,10a4,4,0,0,1,8,0v3H8Zm4,10a2,2,0,0,1-1.72-1h3.44A2,2,0,0,1,12,20Zm6-3H6V16a1,1,0,0,1,1-1H17a1,1,0,0,1,1,1Z"
                        />
                    </svg>
                </button>
            </div>
            <div class="profile-main">
                <button
                        class="profile-main__setting focus--box-shadow"
                        type="button"
                >
                    <img
                            class="profile-main__photo"
                            src="./img/covid.jpg"
                            alt="Profile photo"
                    />
                </button>
                <h1 class="team__name__header">Covid Continent DashBoard</h1>
            </div>
            <ul class="statistics">
                <li class="statistics__entry">
                    <a class="statistics__entry-description" href="#"><p class="team__name"><font color="red">Total
                        Cases</font></p></a
                    ><span class="statistics__entry-quantity">5</span>
                </li>
                <li class="statistics__entry">
                    <a class="statistics__entry-description" href="#"><p class="team__name"><font color="red">Total
                        Active Cases</font></p></a
                    ><span class="statistics__entry-quantity">3</span>
                </li>
                <li class="statistics__entry">
                    <a class="statistics__entry-description" href="#"><p class="team__name"><font color="red">Total
                        Cases From Foreign</font></p></a
                    ><span class="statistics__entry-quantity">48</span>
                </li>
                <li class="statistics__entry">
                    <a class="statistics__entry-description" href="#"><p class="team__name"><font color="red">Total
                        Discharged</font></p></a
                    ><span class="statistics__entry-quantity">48</span>
                </li>
                <li class="statistics__entry">
                    <a class="statistics__entry-description" href="#"><p class="team__name"><font color="red">Total
                        Deaths</font></p></a
                    ><span class="statistics__entry-quantity">48</span>
                </li>
            </ul>
            <%--<div class="banner">
              <h3 class="banner__title">Premium access</h3>
              <p class="banner__description">Create teams without limits</p>
              <button class="banner__button" type="button">
                Get Premium Access
              </button>
            </div>--%>
        </section>
    </aside>
</div>
</body>
</html>
<script type="text/javascript"
        src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js">
</script>
<script type="text/javascript">
    function getstatewisedata() {
        alert('hi');
        const state = $("#name").val();
        alert(state);

        $.ajax({
            type: "GET",
            url: "./getTotalCovidDataStateWise/" + state,
            dataType: "json",
            success: function (response) {
                alert(response);
            }
        });
    }

</script>
