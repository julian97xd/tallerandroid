.class Lcom/armando/parcial/actividad_add$1;
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

    .line 38
    iput-object p1, p0, Lcom/armando/parcial/actividad_add$1;->this$0:Lcom/armando/parcial/actividad_add;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 41
    iget-object p1, p0, Lcom/armando/parcial/actividad_add$1;->this$0:Lcom/armando/parcial/actividad_add;

    invoke-virtual {p1}, Lcom/armando/parcial/actividad_add;->finish()V

    return-void
.end method
