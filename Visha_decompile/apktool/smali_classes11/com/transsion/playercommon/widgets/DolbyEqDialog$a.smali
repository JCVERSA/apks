.class public Lcom/transsion/playercommon/widgets/DolbyEqDialog$a;
.super Los8;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/widgets/DolbyEqDialog;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lcom/transsion/playercommon/widgets/DolbyEqDialog;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/widgets/DolbyEqDialog;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/DolbyEqDialog$a;->c:Lcom/transsion/playercommon/widgets/DolbyEqDialog;

    iput-object p2, p0, Lcom/transsion/playercommon/widgets/DolbyEqDialog$a;->b:Landroid/view/View;

    invoke-direct {p0}, Los8;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/DolbyEqDialog$a;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lraa;->f(Landroid/content/Context;)V

    return-void
.end method
