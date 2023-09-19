<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Integrate Spatie Medialibrary in Laravel</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <div class="d-flex p-2 bd-highlight mb-3">
            <a href="{{ route('client.create') }}" class="btn btn-dark">Add</a>
        </div>
        <table class="table">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th width="30%">Avatar thumb</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach($clients as $key=>$item)
                <tr>
                    <td>{{ ++$key }}</td>
                    <td>{{ $item->name }}</td>
                    <td>{{ $item->email }}</td>
                    <!-- Display the thumbnail image -->
                    <td><img src="{{ $item->getFirstMediaUrl('avatar','thumb') }}" alt="Original Image"></td>
                    <td>
                        <a class="btn btn-xs btn-primary" href="{{ route('client.edit',$item->id) }}">
                            Edit
                        </a>
                    </td>
                    <td>
                        <form action="{{ route('client.destroy',$item->id) }}" method="POST" onsubmit="return confirm('{{ trans('are You Sure ? ') }}');"
                            style="display: inline-block;">
                            <input type="hidden" name="_method" value="DELETE">
                            <input type="hidden" name="_token" value="{{ csrf_token() }}">
                            <input type="submit" class="btn btn-xs btn-danger" value="Delete">
                        </form>
                    </td>
                  
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</body>
</html>