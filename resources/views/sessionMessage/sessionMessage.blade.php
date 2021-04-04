@if (session("success") !== null )
    <style>
        .my-alert{
            background-color: rgba(240, 240, 50, .4);
            display: block;
        }
    </style>

    {{  session("success") }}

@endif
