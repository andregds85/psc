@extends('layouts.app')
@section('content')


    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2> Mostrar Paciente</h2>
            </div>
            <div class="pull-right">
                <a class="btn btn-primary" href="{{ route('pacientes.index') }}"> Voltar</a>
            </div>
        </div>
    </div>



    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong>Status da Solicitação:</strong>
                {{ $mapas->id}}
            </div>
        </div>
        </div>


        <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong>Criado em:</strong>
                {{ $paciente->created_at}}
            </div>
        </div>
        </div>



        <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong>Atualizada em:</strong>
                {{ $paciente->updated_at}}
            </div>
        </div>
        </div>


    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong>ID:</strong>
                {{ $paciente->id }}
            </div>
        </div>
        </div>



        <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong>Hospital:</strong>





            </div>
        </div>
        </div>


        <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong>solicitacao:</strong>
                {{ $paciente->solicitacao}}
            </div>
        </div>
        </div>


        <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong>CNS:</strong>
                {{ $paciente->cns}}
            </div>
        </div>
        </div>

        <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong>Nome do usuário:</strong>
                {{ $paciente->nomedousuario}}
            </div>
        </div>
        </div>

        <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong>Municipio:</strong>
                {{ $paciente->municipio}}
            </div>
        </div>
        </div>

        <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong>Data de Solicitação:</strong>
                {{ $paciente->datasolicitacao}}
            </div>
        </div>
        </div>

        <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong>Unidade Desejeda:</strong>
                {{ $paciente->unidadedesejada}}
            </div>
        </div>
        </div>

        <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong>Código:</strong>
                {{ $paciente->codigo}}
            </div>
        </div>
        </div>

        <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong>Observação 1:</strong>
                {{ $paciente->observacao1}}
            </div>
        </div>
        </div>


        <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong>Observação 2:</strong>
                {{ $paciente->observacao2}}
            </div>
        </div>
        </div>


        <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong>Observação 3:</strong>
                {{ $paciente->observacao3}}
            </div>
        </div>
        </div>


        <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong>Observação 4:</strong>
                {{ $paciente->observacao4}}
            </div>
        </div>
        </div>


        <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong>Observação 5:</strong>
                {{ $paciente->observacao5}}
            </div>
        </div>
        </div>









@endsection
<p class="text-center text-primary"><small>Paciente</small></p>






