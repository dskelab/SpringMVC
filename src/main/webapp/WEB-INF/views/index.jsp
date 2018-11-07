<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/css/bootstrap.min.css"
          integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B"
          crossorigin="anonymous">
    <!--custom css-->
    <link rel="stylesheet" href="/css/index.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css"
          integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt"
          crossorigin="anonymous">

    <title>分布式数据库</title>
</head>
<body>
<nav class="navbar navbar-light navbar-expand-lg sticky-top">
    <a class="navbar-brand" href="index.jsp">
        <img src="/images/logo.png" width="128" height="128" class="img-fluid">
        <!--Logo-->
    </a>
    <button class="navbar-toggler" type="button"
            data-toggle="collapse" data-target="#nav-menu"
            aria-controls="navbarTogglerDemo02" aria-expanded="false"
            aria-label="Toggle navigation">
        <span class="sr-only">Toggle navigation</span>
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse mr-auto" id="nav-menu">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a href="#" class="nav-link">
                    <i class="fas fa-home" aria-hidden="true">
                        Home
                    </i>
                </a>
            </li>
            <li class="nav-item">
                <a href="#" class="nav-link">
                    <span class="badge badge-pill badge-light badge-notify">5</span>
                    <i class="fas fa-bell" aria-hidden="true">
                        Notifications
                    </i>
                </a>
            </li>
            <li class="nav-item">
                <a href="#" class="nav-link" role="button" data-toggle="modal"
                   data-target="#messages-modal">
                    <i class="fas fa-envelope" aria-hidden="true">
                        Messages
                    </i>
                </a>
            </li>
            <li class="nav-item d-block d-md-none">
                <a href="#">
                    <i class="fa fa-user" aria-hidden="true">
                        Profile
                    </i>
                </a>
            </li>
            <li class="nav-item d-block d-md-none">
                <a href="#">
                    <i class="fa fa-off" aria-hidden="true">
                        Logout
                    </i>
                </a>
            </li>
        </ul>
        <ul class="navbar-nav">
            <li class="nav-item d-none d-lg-block">
                <form class="form-inline" id="search" role="search">
                    <div class="input-group">
                        <input class="form-control" type="search" placeholder="Search">
                        <div class="input-group-append">
                            <div class="input-group-text"><i class="fa fa-search"></i></div>
                        </div>
                    </div>
                </form>
            </li>
            <li class="nav-item d-none d-md-block">
                <div id="nav-options" class="btn-group">
                    <button id="headDropDown"
                            class="btn btn-light dropdown-toggle img-thumbnail" type="button"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <img src="/images/jon.png">
                    </button>
                    <div class="dropdown-menu dropdown-menu-right">
                        <a href="#" class="dropdown-item">Profile</a>
                        <a href="../../../../../../../../Users/kzg/Desktop/MockTwitter-master/MockTwitter-master/settings.html" class="dropdown-item">Setting</a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item">Logout</a>
                    </div>
                </div>
            </li>
            <li class="nav-item">
                <button id="tweet" class="btn btn-light d-none d-lg-block"
                        data-toggle="modal" data-target="#tweet-modal">
                        <span class="fa fa-pencil-alt" aria-hidden="true">
                            Tweet
                        </span>
                </button>
            </li>
        </ul>
    </div>
</nav>

<div class="container-fluid">
    <div class="row" id="mainRow">
        <div id="profile" class="col-lg-3 d-none d-lg-block bd-sidebar">
            <div id="profile-resume" class="card w-75" style="margin-left: 3.5rem">
                <img class="card-img-top img-fluid"
                     src="/images/landscape.jpg">
                <div class="card-body">
                    <img src="/images/jon.png" class="card-img">
                    <h5 class="card-title">
                        Jonny Doo
                        <small
                        >@jonnydoo
                        </small>
                    </h5>
                    <p class="card-text">Dog goes woofy. Did you said squirrel?</p>
                    <div class="row justify-content-start">
                        <div class="col-sm text-center">
                            <span class="profile-stats">Tweets</span>
                            <span class="profile-value">99k</span>
                        </div>
                        <div class="col-sm text-center">
                            <span class="profile-stats">Following</span>
                            <span class="profile-value">7</span>
                        </div>
                        <div class="col-sm text-center">
                            <span class="profile-stats">Followers</span>
                            <span class="profile-value">132k</span>
                        </div>
                    </div>
                </div>
            </div>

            <div id="profile-photo" class="card w-75" style="margin-left: 3.5rem"
            >
                <div class="card-header text-left" style="font-size: 14px;">Photos</div>
                <div class="card-body">
                    <div class="justify-content-center row">
                        <div class="col-lg-6 mb-1 col-13" style="padding: 0">
                            <a href="#" class="d-block" style="margin: 3px">
                                <img class="img-thumbnail img-fluid"
                                     src="/images/landscape-02.jpg"></a>
                        </div>
                        <div class="col-lg-6 mb-1 col-12" style="padding: 0;">
                            <a href="#" class="d-block" style="margin: 3px">
                                <img class="img-fluid img-thumbnail"
                                     src="/images/landscape-03.jpg"></a>
                        </div>
                        <div class="col-lg-6 col-12" style="padding: 0;">
                            <a href="#" class="d-block" style="margin: 3px">
                                <img class="img-thumbnail img-fluid"
                                     src="/images/landscape-04.jpg"></a>
                        </div>
                        <div class="col-lg-6 mb-1 col-12" style="padding: 0;">
                            <a href="#" class="d-block" style="margin: 3px">
                                <img class="img-fluid img-thumbnail"
                                     src="/images/landscape-05.jpg"></a>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <div id="main" class="col-sm-12 col-lg-6">
            <div id="main-card" class="card">
                <form id="new-message">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="What is happening?">
                        <div class="input-group-append">
                            <span class="input-group-text">
                                <i class="fa fa-camera" aria-hidden="true"></i>
                            </span>
                        </div>
                    </div>
                </form>
                <ul id="feed" class="list-unstyled">
                    <li>
                        <img src="/images/doge.jpg" class="feed-avatar rounded-circle">
                        <div class="feed-post">
                            <h5>Name
                                <small>@namex - 3h</small>
                            </h5>
                            <p> You can't hold a dog down without staying down with
                                him!</p>
                        </div>
                        <div class="action-list">
                            <a href="#" data-toggle="tooltip" data-placement="bottom" title="Reply">
                                <i class="fa fa-share" aria-hidden="true"></i>
                            </a>
                            <a href="#" data-toggle="tooltip" data-placement="bottom"
                               title="Retweet">
                                <i class="fa fa-sync-alt" aria-hidden="true"></i>
                                <span class="retweet-count">6</span>
                            </a>
                            <a href="#" data-toggle="tooltip" data-placement="bottom" title="Star">
                                <i class="fa fa-star" aria-hidden="true"></i>
                            </a>
                        </div>
                    </li>
                    <li>
                        <img src="/images/laika.jpg" class="feed-avatar rounded-circle">
                        <div class="feed-post">
                            <h5>Laika
                                <small>@spacesog - 4h</small>
                            </h5>
                            <p>That's one small step for a dog, one giant leap for giant</p>
                        </div>
                        <div class="action-list">
                            <a href="#" data-toggle="tooltip" data-placement="bottom" title="Reply">
                                <i class="fa fa-share" aria-hidden="true"></i>
                            </a>

                            <a href="#" data-toggle="tooltip" data-placement="bottom"
                               title="Retweet">
                                <i class="fa fa-sync-alt" aria-hidden="true"></i>
                                <span class="retweet-count">4</span>
                            </a>

                            <a href="#" data-toggle="tooltip" data-placement="bottom" title="Star">
                                <i class="fa fa-star" aria-hidden="true"></i>
                            </a>
                        </div>
                    </li>
                    <li>
                        <img src="/images/doge.jpg" class="feed-avatar rounded-circle">
                        <div class="feed-post">
                            <h5>Name
                                <small>@namex - 3h</small>
                            </h5>
                            <p> You can't hold a dog down without staying down with
                                him!</p>
                        </div>
                        <div class="action-list">
                            <a href="#" data-toggle="tooltip" data-placement="bottom" title="Reply">
                                <i class="fa fa-share" aria-hidden="true"></i>
                            </a>
                            <a href="#" data-toggle="tooltip" data-placement="bottom"
                               title="Retweet">
                                <i class="fa fa-sync-alt" aria-hidden="true"></i>
                                <span class="retweet-count">6</span>
                            </a>
                            <a href="#" data-toggle="tooltip" data-placement="bottom" title="Star">
                                <i class="fa fa-star" aria-hidden="true"></i>
                            </a>
                        </div>
                    </li>
                    <li>
                        <img src="/images/laika.jpg" class="feed-avatar rounded-circle">
                        <div class="feed-post">
                            <h5>Laika
                                <small>@spacesog - 4h</small>
                            </h5>
                            <p>That's one small step for a dog, one giant leap for giant</p>
                        </div>
                        <div class="action-list">
                            <a href="#" data-toggle="tooltip" data-placement="bottom" title="Reply">
                                <i class="fa fa-share" aria-hidden="true"></i>
                            </a>

                            <a href="#" data-toggle="tooltip" data-placement="bottom"
                               title="Retweet">
                                <i class="fa fa-sync-alt" aria-hidden="true"></i>
                                <span class="retweet-count">4</span>
                            </a>

                            <a href="#" data-toggle="tooltip" data-placement="bottom" title="Star">
                                <i class="fa fa-star" aria-hidden="true"></i>
                            </a>
                        </div>
                    </li>
                    <li>
                        <img src="/images/doge.jpg" class="feed-avatar rounded-circle">
                        <div class="feed-post">
                            <h5>Name
                                <small>@namex - 3h</small>
                            </h5>
                            <p> You can't hold a dog down without staying down with
                                him!</p>
                        </div>
                        <div class="action-list">
                            <a href="#" data-toggle="tooltip" data-placement="bottom" title="Reply">
                                <i class="fa fa-share" aria-hidden="true"></i>
                            </a>
                            <a href="#" data-toggle="tooltip" data-placement="bottom"
                               title="Retweet">
                                <i class="fa fa-sync-alt" aria-hidden="true"></i>
                                <span class="retweet-count">6</span>
                            </a>
                            <a href="#" data-toggle="tooltip" data-placement="bottom" title="Star">
                                <i class="fa fa-star" aria-hidden="true"></i>
                            </a>
                        </div>
                    </li>
                    <li>
                        <img src="/images/laika.jpg" class="feed-avatar rounded-circle">
                        <div class="feed-post">
                            <h5>Laika
                                <small>@spacesog - 4h</small>
                            </h5>
                            <p>That's one small step for a dog, one giant leap for giant</p>
                        </div>
                        <div class="action-list">
                            <a href="#" data-toggle="tooltip" data-placement="bottom" title="Reply">
                                <i class="fa fa-share" aria-hidden="true"></i>
                            </a>

                            <a href="#" data-toggle="tooltip" data-placement="bottom"
                               title="Retweet">
                                <i class="fa fa-sync-alt" aria-hidden="true"></i>
                                <span class="retweet-count">4</span>
                            </a>

                            <a href="#" data-toggle="tooltip" data-placement="bottom" title="Star">
                                <i class="fa fa-star" aria-hidden="true"></i>
                            </a>
                        </div>
                    </li>
                    <li>
                        <img src="/images/doge.jpg" class="feed-avatar rounded-circle">
                        <div class="feed-post">
                            <h5>Name
                                <small>@namex - 3h</small>
                            </h5>
                            <p> You can't hold a dog down without staying down with
                                him!</p>
                        </div>
                        <div class="action-list">
                            <a href="#" data-toggle="tooltip" data-placement="bottom" title="Reply">
                                <i class="fa fa-share" aria-hidden="true"></i>
                            </a>
                            <a href="#" data-toggle="tooltip" data-placement="bottom"
                               title="Retweet">
                                <i class="fa fa-sync-alt" aria-hidden="true"></i>
                                <span class="retweet-count">6</span>
                            </a>
                            <a href="#" data-toggle="tooltip" data-placement="bottom" title="Star">
                                <i class="fa fa-star" aria-hidden="true"></i>
                            </a>
                        </div>
                    </li>
                    <li>
                        <img src="/images/laika.jpg" class="feed-avatar rounded-circle">
                        <div class="feed-post">
                            <h5>Laika
                                <small>@spacesog - 4h</small>
                            </h5>
                            <p>That's one small step for a dog, one giant leap for giant</p>
                        </div>
                        <div class="action-list">
                            <a href="#" data-toggle="tooltip" data-placement="bottom" title="Reply">
                                <i class="fa fa-share" aria-hidden="true"></i>
                            </a>

                            <a href="#" data-toggle="tooltip" data-placement="bottom"
                               title="Retweet">
                                <i class="fa fa-sync-alt" aria-hidden="true"></i>
                                <span class="retweet-count">4</span>
                            </a>

                            <a href="#" data-toggle="tooltip" data-placement="bottom" title="Star">
                                <i class="fa fa-star" aria-hidden="true"></i>
                            </a>
                        </div>
                    </li>
                    <li>
                        <img src="/images/doge.jpg" class="feed-avatar rounded-circle">
                        <div class="feed-post">
                            <h5>Name
                                <small>@namex - 3h</small>
                            </h5>
                            <p> You can't hold a dog down without staying down with
                                him!</p>
                        </div>
                        <div class="action-list">
                            <a href="#" data-toggle="tooltip" data-placement="bottom" title="Reply">
                                <i class="fa fa-share" aria-hidden="true"></i>
                            </a>
                            <a href="#" data-toggle="tooltip" data-placement="bottom"
                               title="Retweet">
                                <i class="fa fa-sync-alt" aria-hidden="true"></i>
                                <span class="retweet-count">6</span>
                            </a>
                            <a href="#" data-toggle="tooltip" data-placement="bottom" title="Star">
                                <i class="fa fa-star" aria-hidden="true"></i>
                            </a>
                        </div>
                    </li>
                    <li>
                        <img src="/images/laika.jpg" class="feed-avatar rounded-circle">
                        <div class="feed-post">
                            <h5>Laika
                                <small>@spacesog - 4h</small>
                            </h5>
                            <p>That's one small step for a dog, one giant leap for giant</p>
                        </div>
                        <div class="action-list">
                            <a href="#" data-toggle="tooltip" data-placement="bottom" title="Reply">
                                <i class="fa fa-share" aria-hidden="true"></i>
                            </a>

                            <a href="#" data-toggle="tooltip" data-placement="bottom"
                               title="Retweet">
                                <i class="fa fa-sync-alt" aria-hidden="true"></i>
                                <span class="retweet-count">4</span>
                            </a>

                            <a href="#" data-toggle="tooltip" data-placement="bottom" title="Star">
                                <i class="fa fa-star" aria-hidden="true"></i>
                            </a>
                        </div>
                    </li>
                </ul>
            </div>
            <nav class="text-center mt-4">
                <ul class="pagination justify-content-center">
                    <li class="page-item disabled">
                        <a class="page-link" href="#" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span> </a></li>
                    <li class="page-item active"><a class="page-link" href="#">
                        1
                        <span class="sr-only">(current)</span>
                    </a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item disabled"><a class="page-link" href="#">...</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item"><a class="page-link" href="#">4</a></li>
                    <li class="page-item"><a class="page-link" href="#" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span></a></li>
                </ul>
            </nav>
        </div>
        <div id="right-content" class="col-lg-3 d-none d-lg-block">
            <div id="who-follow" class="card">
                <div class="card-header">
                    Who to follow
                </div>
                <div class="card-body">
                    <ul class="list-unstyled">
                        <li>
                            <img src="/images/cat.jpg" class="rounded-circle" alt="">
                            <div class="table-info">
                                <strong>Crazy cats</strong>
                                <a href="#" role="button" tabindex="-1" class="btn btn-light"
                                   data-toggle="popover" data-trigger="focus"
                                   title="You may want to follow">
                                    <i class="fa fa-plus" aria-hidden="true"> </i>
                                    Follow
                                </a>
                            </div>
                        </li>
                        <li>
                            <img src="/images/ration.jpg" class="rounded-circle" alt="">
                            <div class="table-info">
                                <strong>Free ration alert</strong>
                                <a href="#" role="button" tabindex="-1" class="btn btn-light"
                                   data-toggle="popover" data-trigger="focus"
                                   title="You may want to follow">
                                    <i class="fa fa-plus" aria-hidden="true"> </i>
                                    Follow
                                </a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div id="app-info" class="card">
                <div class="card-body">
                    © 2015 SampleApp
                    <div>
                        <a href="#">About</a>
                        <a href="#">Terms and Privacy</a>
                        <a href="#">Help</a>
                        <a href="#">Status</a>
                        <a href="#">Contact</a>
                    </div>
                </div>
                <div class="card-footer">
                    <a href="#">Connect other address book</a>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="tweet-modal" tabindex="-1"
     role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Dog a new tweet</h4>
                <button type="button" class="close" data-dismiss="modal"
                        aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <textarea rows="4" maxlength="140" placeholder="What you want to bark?"
                          class="form-control"></textarea>
            </div>
            <div class="modal-footer">
                <span class="char-count mr-auto" data-max="140">140</span>
                <button type="button" class="btn btn-light"
                        data-dismiss="modal">
                    Close
                </button>
                <button type="button" class="btn btn-primary">
                    Tweet
                </button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="messages-modal" tabindex="-1"
     role="dialog">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Dog messages</h4>
                <button type="button" class="btn btn-primary btn-message">New
                    message</button>
                <button type="button" class="close" data-dismiss="modal"
                        aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <ul class="list-unstyled">
                    <li>
                        <a href="#">
                            <img src="/images/laika.jpg" class="rounded-circle">
                            <div class="msg-content">
                                <h5>Laika <small>@spacesog</small></h5>
                                <p>Hey Jonny, how is down there?</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="/images/doge.jpg" class="rounded-circle">
                            <div class="msg-content">
                                <h5>Doge <small>@dogeoficial </small></h5>
                                <p>Wow! How did I turned in to a meme?</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="/images/cat.jpg" class="rounded-circle">
                            <div class="msg-content">
                                <h5>Cat <small>@crazycat</small></h5>
                                <p>You will never catch me!</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="/images/laika.jpg" class="rounded-circle">
                            <div class="msg-content">
                                <h5>Laika <small>@spacesog</small></h5>
                                <p>I think I saw you in Jupiter!</p>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
<script src="/js/bootstrap.min.js"
        integrity="sha384-o+RDsa0aLu++PJvFqy8fFScvbHFLtbvScb8AjopnFD+iEQ7wo/CG0xlczd+2O/em"
        crossorigin="anonymous"></script>
<script src="/js/index.js"></script>
</body>
</html>