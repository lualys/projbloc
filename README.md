# Contador com Flutter BLoC e Device Preview

Um projeto simples desenvolvido em **Flutter** que demonstra o uso do **padrão BLoC (Business Logic Component)** para gerenciamento de estado.  
O aplicativo possui três botões principais que permitem **incrementar**, **decrementar** e **resetar** o valor exibido na tela.

## Funcionalidades

✅ Incrementar o contador (+)  
✅ Decrementar o contador (-)  
✅ Resetar o valor (♻️ voltar para zero)  
✅ Interface responsiva e moderna  
✅ Teste em vários dispositivos com **Device Preview**  
✅ Suporte a **tema claro e escuro**

---

## Estrutura do Projeto

lib/
├── main.dart
├── app.dart
└── features/
└── home/
├── bloc/
│   ├── home_bloc.dart
│   ├── home_event.dart
│   └── home_state.dart
└── view/
└── home_page.dart

### Explicação das Pastas

| Pasta | Função |
|-------|--------|
| `bloc/` | Contém a lógica do BLoC — eventos, estados e processamento |
| `view/` | Contém as telas e widgets do app |
| `app.dart` | Configurações principais do aplicativo (tema, rotas etc.) |
| `main.dart` | Ponto de entrada do projeto (ativa o Device Preview) |

---

## Funcionamento do BLoC

| Evento | Ação | Resultado |
|---------|------|------------|
| `IncrementEvent` | Soma +1 ao contador | Exibe valor atualizado |
| `DecrementEvent` | Subtrai -1 do contador | Exibe valor atualizado |
| `ResetEvent` | Zera o contador | Exibe "0" |

### Fluxo

[Botão] → add(Evento) → BLoC processa → emite novo estado → UI atualiza automaticamente

## Dependências principais

Adicione no seu `pubspec.yaml`:

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_bloc: ^9.0.0
  device_preview: ^1.2.0
````

---

## Device Preview

Este projeto usa o **Device Preview** para simular diferentes dispositivos, idiomas e temas (claro/escuro).
Isso permite testar o layout e a responsividade sem precisar de múltiplos emuladores.

```dart
DevicePreview(
  enabled: true,
  builder: (context) => const MyApp(),
)
```

### Importante

No `MaterialApp`, a propriedade `useInheritedMediaQuery: true` garante que o layout herde corretamente as configurações simuladas pelo Device Preview (tamanho de tela, idioma e tema).

---

## Interface

### Captura de Tela

<img src="https://github.com/lualys/projbloc/tree/main/assets/demo/demo.png" width="400px"/>

* 🟢 **Botão verde:** Incrementa o contador
* 🔴 **Botão vermelho:** Decrementa o contador
* ⚪ **Botão cinza:** Reseta o valor para zero

---

## 🧰 Executando o Projeto

1. Clone este repositório:

   ```bash
   git clone https://github.com/lualys/projbloc.git
   ```

2. Acesse a pasta:

   ```bash
   cd flutter_bloc_contador
   ```

3. Instale as dependências:

   ```bash
   flutter pub get
   ```

4. Execute o app:

   ```bash
   flutter run
   ```

---

## 🧑‍💻 Autor

**Luana Silva Figueiredo**
💼 Estudante de Análise e Desenvolvimento de Sistemas
📍 Corrente - PI, Brasil