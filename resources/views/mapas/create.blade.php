@extends('layouts.app')
@section('content')
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2>Novo Mapa</h2>
            </div>
            <div class="pull-right">
                <a class="btn btn-primary" href="{{ route('mapas.index') }}"> Voltar</a>
            </div>
        </div>
    </div>

    @if ($errors->any())
        <div class="alert alert-danger">
            <strong>Ops!</strong> Houve algum erro na sua entrada<br><br>
            <ul>
                    @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                     }  @endforeach
            </ul>
        </div>
    @endif

<form action="{{ route('pacientes.store') }}" method="POST">
  	@csrf
<!-- chama  a tabela categorias dentro da tabela pacientes -->

<div class="row">
    <div class="col-xs-12 col-sm-12 col-md-12">
        <div class="form-group">
                <label for="exampleInputCategoria">Hospital</label>
                <select class="form-control" name="categorias_id" id="categoria">

                <?php
                    use App\Models\Categoria;
                    $tabela = categoria::all();
                ?>
                @foreach($tabela as $item)
                <option value='{{$item->id}}' >{{$item->id}}{{$item->name}}</option>
                @endforeach
                </select>
            </div>
        </div>
</div>

<!-- fim do trecho de chamda de categorias -->
     <div class="row">
		    <div class="col-xs-12 col-sm-12 col-md-12">
		        <div class="form-group">
		            <strong>Nome do Mapa:</strong>
		            <input type="text" name="nome" class="form-control" placeholder="entre com o nome do mapa ">
       </div>



       <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
              <strong>Descrição:</strong>
                <textarea class="form-control" style="height:150px" name="descricao" placeholder="Descrição"></textarea>
            </div>
        </div>

          <div class="row">
		    <div class="col-xs-12 col-sm-12 col-md-12">
		        <div class="form-group">
		            <strong>Especialidade</strong>
		            <input type="text" name="especialidade" class="form-control" placeholder="Entre com a Especialidade">
           </div>


          <div class="row">
		    <div class="col-xs-12 col-sm-12 col-md-12">
		        <div class="form-group">
		            <strong>Código do Procedimento:</strong>
		            <input type="text" name="cod_procedimento" class="form-control" placeholder="Entre com o Código do Procedimento">
           </div>




           <div class="row">
		    <div class="col-xs-12 col-sm-12 col-md-12">
		        <div class="form-group">
		            <strong>Procedimento:</strong>
		            <input type="text" name="procedimento" class="form-control" placeholder="Entre com o Procedimento">
           </div>



            
           <div class="row">
		    <div class="col-xs-12 col-sm-12 col-md-12">
		        <div class="form-group">
		            <strong>Vagas:</strong>
		            <input type="text" name="vagas" class="form-control" placeholder="Vagas">
           </div>            




      <fieldset class="form-group">
    <div class="row">
      <legend class="col-form-label col-sm-2 pt-0">Status da Solicitação</legend>
      <div class="col-sm-10">
        <div class="form-check">
          <input class="form-check-input" type="radio" name="statusSolicitacao" id="gridRadios1" value="Verificada" checked>
          <label class="form-check-label" for="gridRadios1">
           Verificada
          </label>
        </div>
        <div class="form-check">
          <input class="form-check-input" type="radio" name="statusSolicitacao" id="gridRadios2" value="Não Verificada">
          <label class="form-check-label" for="gridRadios2">
            Não Verificada
          </label>
        </div>
        </div>
    </div>
  </fieldset>









		    <div class="col-xs-12 col-sm-12 col-md-12 text-center">
		            <button type="submit" class="btn btn-primary">Cadastrar</button>
		    </div>
		</div>


    </form>



@endsection


    