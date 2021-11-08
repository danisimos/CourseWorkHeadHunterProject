<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>HeadHunter</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="/resources/js/jquery.min.js"></script>
    <script src="/resources/js/addVacancyScript.js"></script>
</head>
<body>
<nav class="navbar navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="/">HeadHunter</a>
        <a class="navbar-brand" href="/account">
            <#if user.avatarId??>
                <img alt="" width="30" height="24" class="d-inline-block align-text-top" src="/files/${user.avatarId}"/>
            <#else>
                <img alt="" width="30" height="24" class="d-inline-block align-text-top" src="/resources/images/no-avatar.png"/>
            </#if>
            ${user.firstName} ${user.lastName}
        </a>



        <ul class="nav nav-tabs">
            <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="/account/myVacancy">Мои вакансии</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/account/myCV">Мои резюме</a>
            </li>

        </ul>

        <form class="d-flex" action="/account/updateAvatar" method="get">
            <button class="btn btn-outline-success" type="submit">Загрузить фото</button>
        </form>

        <form class="d-flex" action="/signOut" method="post">
            <button class="btn btn-outline-success" type="submit">Выйти</button>
        </form>
    </div>
    </div>
</nav>

<br>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-5">
            <div class="text-center">
                <form class="form-signin" id="add-post-form" action="/account/addMyVacancy" method="post">
                    <h1 class="h3 mb-3 font-weight-normal">Добавить вакансию</h1>
                    <input type="text" name="content" id="content" class="form-control" placeholder="Текст вакансии" required autofocus>
                    <br>
                    <button class="btn btn-lg btn-primary btn-block" type="submit">Добавить</button>
                </form>
                <br>
                <h1>Ваши вакансии:</h1>
                <br>
            </div>
        </div>
    </div>
</div>




    <div class="container">
        <div class="row justify-content-center" id="post-list">
            <#list vacancyList as vacancy>

                <div class="col-8">
                    <div class="card-deck mb-3 text-center">
                        <div class="card mb-4 box-shadow">

                            <div class="card-body">
                                <h3 class="card-title pricing-card-title">${vacancy.content}</h3>
                            </div>
                        </div>
                    </div>
                </div>

                <br>
            </#list>
        </div>
    </div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>