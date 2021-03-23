@extends('layouts4.app')
@section('content')
<div class="card mb-3">
  <div class="card-body">
    <h5 class="card-title">Exportar Usuários</h5>

  </div>
</div>

<div class="row">
    <div class="col-lg-12 margin-tb">

   </div>
 </div>
 <?php $m=Auth::user()->macro; ?>


    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2>Paciente</h2>
            </div>
        </div>
    </div>



    <?php
     use App\Models\macro;
     $tabela = macro::all();
    ?>
    <table class="table table-bordered">
        <tr>
            <th>Status</th>
            <th>Solicitação</th>
            <th>Hospital</th>
        </tr>

        @foreach($tabela as $item)
	    <tr>
            <td>{{ $item->id }}</td>
            <td>{{ $item->nome }}</td>


	        <td>
                <td>
                 <form action="{{route('users.create',$item->id)}}" method="POST">
                       <a href="{{ route('users.create', ['id' => $item->id]) }}">Mostrar</a>

                    </form>
                    </td>
	        </td>
        </tr>
	    @endforeach
    </table>



@endsection
