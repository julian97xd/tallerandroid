.class Lcom/armando/parcial/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/armando/parcial/MainActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/armando/parcial/MainActivity;


# direct methods
.method constructor <init>(Lcom/armando/parcial/MainActivity;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/armando/parcial/MainActivity$1;->this$0:Lcom/armando/parcial/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 55
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/armando/parcial/MainActivity$1;->this$0:Lcom/armando/parcial/MainActivity;

    const-class v1, Lcom/armando/parcial/actividad_add;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    iget-object v0, p0, Lcom/armando/parcial/MainActivity$1;->this$0:Lcom/armando/parcial/MainActivity;

    const/16 v1, 0x1c2

    invoke-virtual {v0, p1, v1}, Lcom/armando/parcial/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
