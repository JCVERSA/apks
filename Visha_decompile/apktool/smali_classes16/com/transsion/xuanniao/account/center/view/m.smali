.class public Lcom/transsion/xuanniao/account/center/view/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/xuanniao/account/center/view/o$c;


# instance fields
.field public final synthetic a:Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/center/view/m;->a:Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 2

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/m;->a:Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;->f:LOppOOO0/OppOOp0;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v0, "jpg"

    invoke-virtual {p0, v0, p1}, LOppOOO0/OppOOp0;->d(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method
