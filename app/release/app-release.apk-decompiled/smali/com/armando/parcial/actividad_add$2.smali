.class Lcom/armando/parcial/actividad_add$2;
.super Ljava/lang/Object;
.source "actividad_add.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/armando/parcial/actividad_add;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/armando/parcial/actividad_add;


# direct methods
.method constructor <init>(Lcom/armando/parcial/actividad_add;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/armando/parcial/actividad_add$2;->this$0:Lcom/armando/parcial/actividad_add;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 48
    iget-object p1, p0, Lcom/armando/parcial/actividad_add$2;->this$0:Lcom/armando/parcial/actividad_add;

    invoke-static {p1}, Lcom/armando/parcial/actividad_add;->access$000(Lcom/armando/parcial/actividad_add;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 49
    new-instance p1, Lcom/armando/parcial/Contact;

    iget-object v0, p0, Lcom/armando/parcial/actividad_add$2;->this$0:Lcom/armando/parcial/actividad_add;

    .line 50
    invoke-static {v0}, Lcom/armando/parcial/actividad_add;->access$100(Lcom/armando/parcial/actividad_add;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/armando/parcial/actividad_add$2;->this$0:Lcom/armando/parcial/actividad_add;

    .line 51
    invoke-static {v1}, Lcom/armando/parcial/actividad_add;->access$200(Lcom/armando/parcial/actividad_add;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/armando/parcial/actividad_add$2;->this$0:Lcom/armando/parcial/actividad_add;

    .line 52
    invoke-static {v2}, Lcom/armando/parcial/actividad_add;->access$300(Lcom/armando/parcial/actividad_add;)Landroid/widget/Spinner;

    move-result-object v2

    iget-object v3, p0, Lcom/armando/parcial/actividad_add$2;->this$0:Lcom/armando/parcial/actividad_add;

    invoke-static {v3}, Lcom/armando/parcial/actividad_add;->access$300(Lcom/armando/parcial/actividad_add;)Landroid/widget/Spinner;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Spinner;->getFirstVisiblePosition()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcom/armando/parcial/Contact;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/armando/parcial/actividad_add$2;->this$0:Lcom/armando/parcial/actividad_add;

    invoke-virtual {v0}, Lcom/armando/parcial/actividad_add;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "newPerson"

    .line 55
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 56
    iget-object p1, p0, Lcom/armando/parcial/actividad_add$2;->this$0:Lcom/armando/parcial/actividad_add;

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Lcom/armando/parcial/actividad_add;->setResult(ILandroid/content/Intent;)V

    .line 57
    iget-object p1, p0, Lcom/armando/parcial/actividad_add$2;->this$0:Lcom/armando/parcial/actividad_add;

    invoke-virtual {p1}, Lcom/armando/parcial/actividad_add;->finish()V

    :cond_0
    return-void
.end method
