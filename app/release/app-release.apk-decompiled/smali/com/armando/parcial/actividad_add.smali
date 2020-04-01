.class public Lcom/armando/parcial/actividad_add;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "actividad_add.java"


# instance fields
.field private edtName:Landroid/widget/EditText;

.field private edtPhone:Landroid/widget/EditText;

.field private spinGroup:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/armando/parcial/actividad_add;)Z
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/armando/parcial/actividad_add;->checkForm()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/armando/parcial/actividad_add;)Landroid/widget/EditText;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/armando/parcial/actividad_add;->edtName:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/armando/parcial/actividad_add;)Landroid/widget/EditText;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/armando/parcial/actividad_add;->edtPhone:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/armando/parcial/actividad_add;)Landroid/widget/Spinner;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/armando/parcial/actividad_add;->spinGroup:Landroid/widget/Spinner;

    return-object p0
.end method

.method private checkForm()Z
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/armando/parcial/actividad_add;->edtName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/armando/parcial/actividad_add;->edtName:Landroid/widget/EditText;

    const-string v2, "Ingrese un nombre"

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return v1

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/armando/parcial/actividad_add;->edtPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/armando/parcial/actividad_add;->edtPhone:Landroid/widget/EditText;

    const-string v2, "Ingrese un n\u00famero de tel\u00e9fono"

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private initListeners()V
    .locals 2

    const v0, 0x7f090049

    .line 38
    invoke-virtual {p0, v0}, Lcom/armando/parcial/actividad_add;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/armando/parcial/actividad_add$1;

    invoke-direct {v1, p0}, Lcom/armando/parcial/actividad_add$1;-><init>(Lcom/armando/parcial/actividad_add;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09004a

    .line 45
    invoke-virtual {p0, v0}, Lcom/armando/parcial/actividad_add;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/armando/parcial/actividad_add$2;

    invoke-direct {v1, p0}, Lcom/armando/parcial/actividad_add$2;-><init>(Lcom/armando/parcial/actividad_add;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/armando/parcial/actividad_add;->spinGroup:Landroid/widget/Spinner;

    new-instance v1, Lcom/armando/parcial/actividad_add$3;

    invoke-direct {v1, p0}, Lcom/armando/parcial/actividad_add$3;-><init>(Lcom/armando/parcial/actividad_add;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method private initViews()V
    .locals 1

    const v0, 0x7f0900fc

    .line 31
    invoke-virtual {p0, v0}, Lcom/armando/parcial/actividad_add;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/armando/parcial/actividad_add;->spinGroup:Landroid/widget/Spinner;

    const v0, 0x7f090071

    .line 32
    invoke-virtual {p0, v0}, Lcom/armando/parcial/actividad_add;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/armando/parcial/actividad_add;->edtName:Landroid/widget/EditText;

    const v0, 0x7f090072

    .line 33
    invoke-virtual {p0, v0}, Lcom/armando/parcial/actividad_add;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/armando/parcial/actividad_add;->edtPhone:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001c

    .line 24
    invoke-virtual {p0, p1}, Lcom/armando/parcial/actividad_add;->setContentView(I)V

    .line 26
    invoke-direct {p0}, Lcom/armando/parcial/actividad_add;->initViews()V

    .line 27
    invoke-direct {p0}, Lcom/armando/parcial/actividad_add;->initListeners()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 89
    invoke-virtual {p0}, Lcom/armando/parcial/actividad_add;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0d0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 95
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090096

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x7f0900f0

    if-eq v0, v1, :cond_0

    .line 104
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/armando/parcial/actividad_add;->finish()V

    return v2

    .line 97
    :cond_1
    iget-object p1, p0, Lcom/armando/parcial/actividad_add;->edtName:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object p1, p0, Lcom/armando/parcial/actividad_add;->edtPhone:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return v2
.end method
