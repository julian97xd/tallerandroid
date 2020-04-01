.class Lcom/armando/parcial/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/armando/parcial/MainActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/armando/parcial/Contact;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/armando/parcial/MainActivity;


# direct methods
.method constructor <init>(Lcom/armando/parcial/MainActivity;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/armando/parcial/MainActivity$2;->this$0:Lcom/armando/parcial/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/armando/parcial/Contact;Lcom/armando/parcial/Contact;)I
    .locals 0

    .line 91
    invoke-virtual {p1}, Lcom/armando/parcial/Contact;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/armando/parcial/Contact;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 89
    check-cast p1, Lcom/armando/parcial/Contact;

    check-cast p2, Lcom/armando/parcial/Contact;

    invoke-virtual {p0, p1, p2}, Lcom/armando/parcial/MainActivity$2;->compare(Lcom/armando/parcial/Contact;Lcom/armando/parcial/Contact;)I

    move-result p1

    return p1
.end method
