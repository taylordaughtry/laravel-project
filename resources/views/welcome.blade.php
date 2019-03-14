<!DOCTYPE html>
<html>
<head>
    <title>Demo Project</title>
</head>
<body>
    <h1>This is inside a Pull Request</h1>
    @foreach ($entries as $entry)
        <h2>{{ $entry->title }}</h2>
        <p>{{ $entry->body }}</p>
    @endforeach
</body>
</html>
