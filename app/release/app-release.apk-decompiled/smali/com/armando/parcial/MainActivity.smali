.class public Lcom/armando/parcial/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# instance fields
.field private adapter:Lcom/armando/parcial/adapter;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/armando/parcial/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private getNumRandom(II)I
    .locals 4

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    .line 164
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    int-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int p2, v0

    add-int/2addr p2, p1

    return p2
.end method

.method private getNumberRandom()Ljava/lang/String;
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 138
    invoke-direct {p0, v1, v0}, Lcom/armando/parcial/MainActivity;->getNumRandom(II)I

    move-result v2

    const/16 v3, 0x9

    const-string v4, ""

    const/4 v5, 0x7

    if-eqz v2, :cond_4

    const/4 v6, 0x1

    if-eq v2, v6, :cond_2

    if-eq v2, v0, :cond_0

    const-string v0, "No number"

    return-object v0

    :cond_0
    const-string v0, "320"

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_1

    .line 154
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1, v3}, Lcom/armando/parcial/MainActivity;->getNumRandom(II)I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    const-string v0, "310"

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_3

    .line 148
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1, v3}, Lcom/armando/parcial/MainActivity;->getNumRandom(II)I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-object v0

    :cond_4
    const-string v0, "300"

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v5, :cond_5

    .line 142
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1, v3}, Lcom/armando/parcial/MainActivity;->getNumRandom(II)I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return-object v0
.end method

.method private initListener()V
    .locals 2

    const v0, 0x7f09003f

    .line 52
    invoke-virtual {p0, v0}, Lcom/armando/parcial/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/armando/parcial/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/armando/parcial/MainActivity$1;-><init>(Lcom/armando/parcial/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initViews()V
    .locals 2

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/armando/parcial/MainActivity;->list:Ljava/util/List;

    const v0, 0x7f090099

    .line 44
    invoke-virtual {p0, v0}, Lcom/armando/parcial/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/armando/parcial/MainActivity;->listView:Landroid/widget/ListView;

    .line 45
    invoke-virtual {p0, v0}, Lcom/armando/parcial/MainActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 46
    new-instance v0, Lcom/armando/parcial/adapter;

    iget-object v1, p0, Lcom/armando/parcial/MainActivity;->list:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/armando/parcial/adapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/armando/parcial/MainActivity;->adapter:Lcom/armando/parcial/adapter;

    .line 47
    iget-object v1, p0, Lcom/armando/parcial/MainActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 63
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x1c2

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 66
    iget-object p1, p0, Lcom/armando/parcial/MainActivity;->list:Ljava/util/List;

    const-string p2, "newPerson"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/armando/parcial/Contact;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object p1, p0, Lcom/armando/parcial/MainActivity;->adapter:Lcom/armando/parcial/adapter;

    invoke-virtual {p1}, Lcom/armando/parcial/adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 119
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 120
    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 122
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f09000a

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const v2, 0x7f0900d1

    if-eq v1, v2, :cond_0

    .line 132
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 124
    :cond_0
    iget-object p1, p0, Lcom/armando/parcial/MainActivity;->list:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/armando/parcial/Contact;

    invoke-direct {p0}, Lcom/armando/parcial/MainActivity;->getNumberRandom()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/armando/parcial/Contact;->setPhone(Ljava/lang/String;)V

    .line 125
    iget-object p1, p0, Lcom/armando/parcial/MainActivity;->adapter:Lcom/armando/parcial/adapter;

    invoke-virtual {p1}, Lcom/armando/parcial/adapter;->notifyDataSetChanged()V

    return v3

    .line 128
    :cond_1
    iget-object p1, p0, Lcom/armando/parcial/MainActivity;->list:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/armando/parcial/Contact;

    iget-object v1, p0, Lcom/armando/parcial/MainActivity;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/armando/parcial/Contact;

    invoke-virtual {v0}, Lcom/armando/parcial/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/armando/parcial/Contact;->setName(Ljava/lang/String;)V

    .line 129
    iget-object p1, p0, Lcom/armando/parcial/MainActivity;->adapter:Lcom/armando/parcial/adapter;

    invoke-virtual {p1}, Lcom/armando/parcial/adapter;->notifyDataSetChanged()V

    return v3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001d

    .line 33
    invoke-virtual {p0, p1}, Lcom/armando/parcial/MainActivity;->setContentView(I)V

    .line 35
    invoke-direct {p0}, Lcom/armando/parcial/MainActivity;->initViews()V

    .line 36
    invoke-direct {p0}, Lcom/armando/parcial/MainActivity;->initListener()V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .line 74
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 75
    invoke-virtual {p0}, Lcom/armando/parcial/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p2

    const p3, 0x7f0d0001

    .line 76
    invoke-virtual {p2, p3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 81
    invoke-virtual {p0}, Lcom/armando/parcial/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 87
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 113
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 89
    :sswitch_0
    iget-object p1, p0, Lcom/armando/parcial/MainActivity;->list:Ljava/util/List;

    new-instance v0, Lcom/armando/parcial/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/armando/parcial/MainActivity$2;-><init>(Lcom/armando/parcial/MainActivity;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 94
    iget-object p1, p0, Lcom/armando/parcial/MainActivity;->adapter:Lcom/armando/parcial/adapter;

    invoke-virtual {p1}, Lcom/armando/parcial/adapter;->notifyDataSetChanged()V

    return v1

    .line 97
    :sswitch_1
    iget-object p1, p0, Lcom/armando/parcial/MainActivity;->list:Ljava/util/List;

    new-instance v0, Lcom/armando/parcial/MainActivity$3;

    invoke-direct {v0, p0}, Lcom/armando/parcial/MainActivity$3;-><init>(Lcom/armando/parcial/MainActivity;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 102
    iget-object p1, p0, Lcom/armando/parcial/MainActivity;->adapter:Lcom/armando/parcial/adapter;

    invoke-virtual {p1}, Lcom/armando/parcial/adapter;->notifyDataSetChanged()V

    return v1

    .line 105
    :sswitch_2
    iget-object p1, p0, Lcom/armando/parcial/MainActivity;->list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 106
    iget-object p1, p0, Lcom/armando/parcial/MainActivity;->adapter:Lcom/armando/parcial/adapter;

    invoke-virtual {p1}, Lcom/armando/parcial/adapter;->notifyDataSetChanged()V

    return v1

    .line 109
    :sswitch_3
    iget-object p1, p0, Lcom/armando/parcial/MainActivity;->list:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 110
    iget-object p1, p0, Lcom/armando/parcial/MainActivity;->adapter:Lcom/armando/parcial/adapter;

    invoke-virtual {p1}, Lcom/armando/parcial/adapter;->notifyDataSetChanged()V

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09004c -> :sswitch_3
        0x7f090073 -> :sswitch_2
        0x7f0900c6 -> :sswitch_1
        0x7f0900c7 -> :sswitch_0
    .end sparse-switch
.end method
