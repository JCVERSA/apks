.class public Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2$d;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lpk7$a;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2$d;Lpk7$a;)V
    .locals 0

    iput-object p2, p0, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2$d$a;->b:Lpk7$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2$d$a;->b:Lpk7$a;

    iput-boolean p2, p0, Lpk7$a;->d:Z

    return-void
.end method
