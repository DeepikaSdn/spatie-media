<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Add Spatie Medialibrary in Laravel</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-info">
    <div class="container">
        <div class="d-flex p-2 bd-highlight mb-3">
            <a href="{{ route('client.index') }}" class="btn btn-outline-danger btn-sm">Go Back</a>
        </div>
        <div>
            <form action="{{ route("client.update",$client->id) }}" method="POST" enctype="multipart/form-data">
                @csrf
                @method('put')
                <div class="mb-3">
                    <label>Name</label>
                    <input type="text" name="name" value="{{$client->name}}" class="form-control">
                </div>
                <div class="mb-3">
                    <label>Email</label>
                    <input type="email" name="email" value="{{$client->email}}" class="form-control">
                </div>
                <div class="mb-3">
                    <label>Image:</label>
                    <input type="file" name="avatar" class="form-control">
                </div>
                <div class="d-grid">
                    <button class="btn btn-primary">Update</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>