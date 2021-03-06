package Fila::ETL::DB::FQuantidadeAtendimentos;

# Copyright 2008, 2009 - Oktiva Comércio e Serviços de Informática Ltda.
#
# Este arquivo é parte do programa FILA - Sistema de Atendimento
#
# O FILA é um software livre; você pode redistribui-lo e/ou modifica-lo
# dentro dos termos da Licença Pública Geral GNU como publicada pela
# Fundação do Software Livre (FSF); na versão 2 da Licença.
#
# Este programa é distribuido na esperança que possa ser util, mas SEM
# NENHUMA GARANTIA; sem uma garantia implicita de ADEQUAÇÂO a qualquer
# MERCADO ou APLICAÇÃO EM PARTICULAR. Veja a Licença Pública Geral GNU
# para maiores detalhes.
#
# Você deve ter recebido uma cópia da Licença Pública Geral GNU, sob o
# título "LICENCA.txt", junto com este programa, se não, escreva para a
# Fundação do Software Livre(FSF) Inc., 51 Franklin St, Fifth Floor,

use strict;
use warnings;
use base qw(DBIx::Class);

__PACKAGE__->load_components(qw(Core));
__PACKAGE__->table('f_quantidade_atendimentos');
__PACKAGE__->add_columns(
  id_local               => { data_type => 'integer', },
  id_categoria           => { data_type => 'integer', },
  id_guiche              => { data_type => 'integer', },
  id_atendente           => { data_type => 'integer', },
  data                   => { data_type => 'char(10)', },
  horario                => { data_type => 'char(5)', },
  quantidade             => { data_type => 'integer', },
  min_tempo_espera       => { data_type => 'integer', },
  max_tempo_espera       => { data_type => 'integer', },
  sum_tempo_espera       => { data_type => 'integer', },
  min_tempo_deslocamento => { data_type => 'integer', },
  max_tempo_deslocamento => { data_type => 'integer', },
  sum_tempo_deslocamento => { data_type => 'integer', },
  min_tempo_atendimento  => { data_type => 'integer', },
  max_tempo_atendimento  => { data_type => 'integer', },
  sum_tempo_atendimento  => { data_type => 'integer', },
);

1;

__END__

=head1 NAME

FQuantidadeAtendimentos - Tabela de fatos de atendimentos iniciados por minuto

=head1 DESCRIPTION

Esta tabela contem o total de atendimentos iniciados por local,
categoria, guichê, atendente, data, hora e minuto.

=cut
