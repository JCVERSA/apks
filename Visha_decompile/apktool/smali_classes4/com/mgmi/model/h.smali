.class public Lcom/mgmi/model/h;
.super Lcom/mgmi/model/d;
.source "SourceFile"


# instance fields
.field public e:I

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:I

.field public i:Lcom/mgmi/model/StarInfoJson;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mgmi/model/d;-><init>()V

    return-void
.end method


# virtual methods
.method public m(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/mgmi/model/StarInfoJson;

    invoke-static {p1, v0}, Lcom/mgadplus/netlib/json/b;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/mgadplus/netlib/json/a;

    move-result-object p1

    check-cast p1, Lcom/mgmi/model/StarInfoJson;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/mgmi/model/h;->i:Lcom/mgmi/model/StarInfoJson;

    return-void
.end method
