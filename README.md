# sandbox-laravel

## setup
```shell
make setup
```


## Run

```shell
$ docker compose run --rm app bash
```

```shell
$ php artisan migrate
```

```shell
$ php artisan tinker

> App\Models\User::factory()->create()
= App\Models\User {#3802
    name: "Golda Kemmer",
    email: "amelia.collins@example.org",
    email_verified_at: "2023-07-30 08:40:33",
    #password: "$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi",
    #remember_token: "rrN4VROATp",
    updated_at: "2023-07-30 08:40:33",
    created_at: "2023-07-30 08:40:33",
    id: 1,
  }

> App\Models\User::find(1)
= null

> App\Models\User::withTrashed()->find(1)
= App\Models\User {#4702
    id: 1,
    name: "Golda Kemmer",
    email: "amelia.collins@example.org",
    email_verified_at: "2023-07-30 08:40:33",
    #password: "$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi",
    #remember_token: "rrN4VROATp",
    created_at: "2023-07-30 08:40:33",
    updated_at: "2023-07-30 08:41:00",
    deleted_at: "2023-07-30 08:41:00",
  }
```