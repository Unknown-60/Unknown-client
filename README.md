# Unknown-Client
* Copyright :copyright: 2014-2021 Unknown-60

<br/>

## Acerca de
Unknown Client es un proyecto iniciado en 2014 con el fin de enviar de manera automática y programable una secuencia de mensajes establecidas por el usuario.

## Lado lógico
* En versiónes <a href="#versionesAntiguas">1.3</a> o anteriores.
* En versiónes <a href="#versionesNuevas">3.8</a> y superiores.

## Método
#### Versión antigua
* Aplicación tercera.

#### Versíones nuevas
* Inyección de código arbitrario.

# Comportamiento

#### Versiónes antiguas
<p id="versionesAntiguas"</p>
Se usa la función de superposición para buscar el id del botón y pulsar de manera simultanea en él

#### Versiónes nuevas
<p id="versionesNuevas"</p>
Se usa el método Share de Whatsapp para usar la función de re-enviar, permitiendo enviar mensajes simultáneos de forma más precisa rápida.

# Requisitos
* WhatsApp Mod / Base.
* Conocimientos básicos Dalvik Byte Code >> smali.
* Conocimientos XML.
* Apktool o algúna herramienta para descompilar.

Yo usé apktool bajo GNU/Linux, pero sirve para cualquier otro descompilador de cualquier otra plataforma (Siempre y cuando las versiones de aaptz y los bins estén actualizados.)

# Preparación

Decompilar el APK, incluyendo resources.arsc y los archivos dex.

Descargar el código de este repositorio y extraer los archivos.

Ir a la carpeta "<b>Definición/res/layout",</b> abrir el archivo "<b>conversation.xml</b>" y copiar las sentencias.

Ir al WhatsApp descompilado, entrar en la carpeta "<b>res/layout</b>", abrir el archivo "<b>conversation.xml</b>" con algún editor de código y buscar el TextView con el id <b>"date_divider_header"</b> (<com.whatsapp.WaTextView) dirigirse a a la posición en dónde se cierra etiqueta y poner debajo;

```
<ImageButton
	android:gravity="center|top"
	android:layout_gravity="center|top"
	android:id="@+id/send_bom_text"
	android:layout_width="39dp"
	android:layout_height="39dp"
	android:layout_marginRight="2.0dip"
	android:src="@drawable/ic_unknown_client"
	android:scaleType="centerCrop"
	android:background="@layout/bom_fab"
	android:padding="2dp"
	android:layout_weight="0" />


```

Ir a la carpeta "<b>Definición/res/layout-v17",</b> abrir el archivo "<b>conversation.xml</b>" y copiar las sentencias.

Ir al WhatsApp descompilado, entrar en la carpeta "<b>res/layout-v17</b>", abrir el archivo "<b>conversation.xml</b>" con algún editor de código y buscar el TextView con el id <b>"date_divider_header"</b> (<com.whatsapp.WaTextView) dirigirse a a la posición en dónde se cierra etiqueta y poner debajo;

```
<ImageButton
	android:gravity="center|top"
	android:layout_gravity="center|top"
	android:id="@+id/send_bom_text"
	android:layout_width="39dp"
	android:layout_height="39dp"
	android:layout_marginRight="2.0dip"
	android:src="@drawable/ic_unknown_client"
	android:scaleType="centerCrop"
	android:background="@layout/bom_fab"
	android:padding="2dp"
	android:layout_weight="0" />


```

Ir a la carpeta "<b>Definición/res/layout-v21",</b> abrir el archivo "<b>conversation.xml</b>" y copiar las sentencias.

Ir al WhatsApp descompilado, entrar en la carpeta "<b>res/layout-v21</b>", abrir el archivo "<b>conversation.xml</b>" con algún editor de código y buscar el TextView con el id "<b>date_divider_header</b>" (<com.whatsapp.WaTextView) dirigirse a a la posición en dónde se cierra etiqueta y poner debajo;

```
<ImageButton
	android:gravity="center|top"
	android:layout_gravity="center|top"
	android:id="@+id/send_bom_text"
	android:layout_width="39dp"
	android:layout_height="39dp"
	android:layout_marginRight="2.0dip"
	android:src="@drawable/ic_unknown_client"
	android:scaleType="centerCrop"
	android:background="@layout/bom_fab"
	android:padding="2dp"
	android:layout_weight="0" />


```

Ir a la carpeta "<b>Definición/res/values",</b> abrir el archivo "<b>ids.xml</b>" y copiar las sentencias.

Ir al WhatsApp descompilado, entrar en la carpeta "<b>res/values</b>", abrir el archivo "<b>ids.xml</b>" con algún editor de código y definir el id de esta forma

```
<item type="id" name="send_bom_text">false</item>

```

Ir a la carpeta "<b>Definición/smali/com/whatsapp",</b> abrir el archivo "<b>conversation.smali</b>" con algún editor de código y copiar el contenido. 

Ir al WhatsApp descompilado, entrar en la carpeta "<b>Definición/smali/com/whatsapp</b>", abrir el archivo "<b>conversation.smali</b>" con algún editor de código.

Dirigirse al método contructor (en <b># direct methods</b>) y buscar el cierre del método, evidentemente
```
  return-void
.end method
```

E inyectar el código debajo


```
.method public namiAutoText(Landroid/view/View;)V
   .registers 14
   .annotation system Ldalvik/annotation/Signature;
      value = {
         "(",
         "Landroid/view/View;",
         ")V"
      }
   .end annotation

   .prologue
   .line 119
   move-object v0, p0

   move-object v1, p1

   move-object v7, v0

   invoke-virtual {v7}, Lcom/whatsapp/Conversation;->getApplicationContext()Landroid/content/Context;

   move-result-object v7

   invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

   move-result-object v7

   move-object v3, v7

   .line 122
   move-object v7, v0

   move-object v8, v0

   invoke-virtual {v8}, Lcom/whatsapp/Conversation;->getApplicationContext()Landroid/content/Context;

   move-result-object v8

   invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

   move-result-object v8

   const-string v9, "entry"

   const-string v10, "id"

   move-object v11, v0

   invoke-virtual {v11}, Lcom/whatsapp/Conversation;->getApplicationContext()Landroid/content/Context;

   move-result-object v11

   invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

   move-result-object v11

   invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

   move-result v8

   invoke-virtual {v7, v8}, Lcom/whatsapp/Conversation;->findViewById(I)Landroid/view/View;

   move-result-object v7

   check-cast v7, Landroid/widget/EditText;

   move-object v4, v7

   .line 123
   move-object v7, v4

   move-object v8, v3

   const-string v9, "nami_boom_text"

   const-string v10, "Unknown-Client"

   invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

   move-result-object v8

   invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

   .line 126
   move-object v7, v0

   move-object v8, v0

   invoke-virtual {v8}, Lcom/whatsapp/Conversation;->getApplicationContext()Landroid/content/Context;

   move-result-object v8

   invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

   move-result-object v8

   const-string v9, "send"

   const-string v10, "id"

   move-object v11, v0

   invoke-virtual {v11}, Lcom/whatsapp/Conversation;->getApplicationContext()Landroid/content/Context;

   move-result-object v11

   invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

   move-result-object v11

   invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

   move-result v8

   invoke-virtual {v7, v8}, Lcom/whatsapp/Conversation;->findViewById(I)Landroid/view/View;

   move-result-object v7

   check-cast v7, Landroid/widget/ImageView;

   move-object v5, v7

   .line 127
   move-object v7, v5

   invoke-virtual {v7}, Landroid/widget/ImageView;->performClick()Z

   move-result v7

   return-void
.end method

.method public namiBoomCount()I
   .registers 9

   .prologue
   .line 113
   move-object v0, p0

   move-object v5, v0

   invoke-virtual {v5}, Lcom/whatsapp/Conversation;->getApplicationContext()Landroid/content/Context;

   move-result-object v5

   invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

   move-result-object v5

   move-object v2, v5

   .line 114
   move-object v5, v2

   const-string v6, "nami_boom_count"

   const-string v7, "1000"

   invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

   move-result-object v5

   check-cast v5, Ljava/lang/String;

   invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

   move-result v5

   move v3, v5

   .line 115
   move v5, v3

   move v0, v5

   return v0
.end method

.method public namiBoomStart()V
   .registers 12
   .annotation system Ldalvik/annotation/Signature;
      value = {
         "()V"
      }
   .end annotation

   .prologue
   .line 99
   move-object v0, p0

   move-object v6, v0

   invoke-virtual {v6}, Lcom/whatsapp/Conversation;->getApplicationContext()Landroid/content/Context;

   move-result-object v6

   invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

   move-result-object v6

   move-object v2, v6

   .line 102
   move-object v6, v0

   move-object v7, v0

   invoke-virtual {v7}, Lcom/whatsapp/Conversation;->getApplicationContext()Landroid/content/Context;

   move-result-object v7

   invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

   move-result-object v7

   const-string v8, "entry"

   const-string v9, "id"

   move-object v10, v0

   invoke-virtual {v10}, Lcom/whatsapp/Conversation;->getApplicationContext()Landroid/content/Context;

   move-result-object v10

   invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

   move-result-object v10

   invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

   move-result v7

   invoke-virtual {v6, v7}, Lcom/whatsapp/Conversation;->findViewById(I)Landroid/view/View;

   move-result-object v6

   check-cast v6, Landroid/widget/EditText;

   move-object v3, v6

   .line 103
   move-object v6, v3

   move-object v7, v2

   const-string v8, "nami_boom_text"

   const-string v9, "Unknown-Client"

   invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

   move-result-object v7

   invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

   .line 106
   move-object v6, v0

   move-object v7, v0

   invoke-virtual {v7}, Lcom/whatsapp/Conversation;->getApplicationContext()Landroid/content/Context;

   move-result-object v7

   invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

   move-result-object v7

   const-string v8, "send"

   const-string v9, "id"

   move-object v10, v0

   invoke-virtual {v10}, Lcom/whatsapp/Conversation;->getApplicationContext()Landroid/content/Context;

   move-result-object v10

   invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

   move-result-object v10

   invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

   move-result v7

   invoke-virtual {v6, v7}, Lcom/whatsapp/Conversation;->findViewById(I)Landroid/view/View;

   move-result-object v6

   check-cast v6, Landroid/widget/ImageView;

   move-object v4, v6

   .line 107
   move-object v6, v4

   invoke-virtual {v6}, Landroid/widget/ImageView;->performClick()Z

   move-result v6

   return-void
.end method

.method public namiBoomText(Landroid/view/View;)V
   .registers 13
   .annotation system Ldalvik/annotation/Signature;
      value = {
         "(",
         "Landroid/view/View;",
         ")V"
      }
   .end annotation

   .prologue
   .line 65
   move-object v0, p0

   move-object v1, p1

   new-instance v5, Lnami/boomtext/BoomTextDialog;

   move-object v10, v5

   move-object v5, v10

   move-object v6, v10

   move-object v7, v0

   invoke-direct {v6, v7}, Lnami/boomtext/BoomTextDialog;-><init>(Landroid/content/Context;)V

   move-object v3, v5

   .line 66
   move-object v5, v3

   const-string v6, "ATACAR"

   new-instance v7, Lcom/whatsapp/Conversation$BoomStart;

   move-object v10, v7

   move-object v7, v10

   move-object v8, v10

   move-object v9, v0

   invoke-direct {v8, v9}, Lcom/whatsapp/Conversation$BoomStart;-><init>(Lcom/whatsapp/Conversation;)V

   invoke-virtual {v5, v6, v7}, Lnami/boomtext/BoomTextDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

   move-result-object v5

   const-string v6, "CANCELAR"

   new-instance v7, Lcom/whatsapp/Conversation$BoomCancel;

   move-object v10, v7

   move-object v7, v10

   move-object v8, v10

   move-object v9, v0

   invoke-direct {v8, v9}, Lcom/whatsapp/Conversation$BoomCancel;-><init>(Lcom/whatsapp/Conversation;)V

   invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

   move-result-object v5

   .line 76
   move-object v5, v3

   invoke-virtual {v5}, Lnami/boomtext/BoomTextDialog;->show()Landroid/app/AlertDialog;

   move-result-object v5

   return-void
.end method

.method public namiBoomTextStart()V
   .registers 11
   .annotation system Ldalvik/annotation/Signature;
      value = {
         "()V"
      }
   .end annotation

   .prologue
   .line 80
   move-object v0, p0

   new-instance v5, Landroid/os/Handler;

   move-object v9, v5

   move-object v5, v9

   move-object v6, v9

   invoke-direct {v6}, Landroid/os/Handler;-><init>()V

   move-object v2, v5

   .line 81
   new-instance v5, Lcom/whatsapp/Conversation$BoomText;

   move-object v9, v5

   move-object v5, v9

   move-object v6, v9

   move-object v7, v0

   move-object v8, v2

   invoke-direct {v6, v7, v8}, Lcom/whatsapp/Conversation$BoomText;-><init>(Lcom/whatsapp/Conversation;Landroid/os/Handler;)V

   move-object v3, v5

   .line 93
   move-object v5, v2

   move-object v6, v3

   invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

   move-result v5

   return-void
.end method
```

ir a la carpeta donde se encuentra el código de Unknown Client, dirigirse a "<b>byteCode/Inyección/res</b>", copiar todo el contenido.

Volver al WhatsApp descompilado y pegar todo los ficheros en la carpeta res. 

volver a la carpeta donde se encuentra el código de Unknown Client, dirigirse a "<b>byteCode/Inyección/smali</b>", copiar la carpeta "<b>com</b>".

Volver al WhatsApp descompilado y pegarla en la carpeta smali.

Esto puede variar, ya que depende del WhatsApp que estés intentando modificar, algúnos guardan las clases en "<b>smali_classes2</b>", "<b>smali_classes3</b>", "<b>smali_classes4</b>", "<b>smali_classes4</b>", "<b>smali_classes5</b>", etc.

Para identificar la ruta solo hay que usar un poco el cerebro, buscar y pegarlo en la carpeta "<b>smali_classesX</b>" que contenga el archivo. "<b>Lcom/whatsapp/Conversation.smali</b>"


## Preparación
#### Compilarlo por tu cuenta

No hay mucho que explicar.

Abrir Android Studio, crear un nuevo proyecto con el paquete "<b>com.whatsapp</b>".

Ir a la carpeta de Unknown-Client/src, copiar todo el contenido de "<b>res</b>" y pegarlo en tu proyecto.

Copiar todas las clases de la carpeta "<b>java</b>" en la carpeta "<b>java</b>" de tu proyecto.
