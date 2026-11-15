.class public Lv5d;
.super Lcgd;
.source "SourceFile"


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcgd;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lv5d;->d:Ljava/lang/String;

    return-object p0
.end method

.method public b(I)Lv5d;
    .locals 0

    .line 2
    iput p1, p0, Lv5d;->f:I

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lv5d;
    .locals 0

    iput-object p1, p0, Lv5d;->c:Ljava/lang/String;

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lv5d;->c:Ljava/lang/String;

    return-object p0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lv5d;->d:Ljava/lang/String;

    return-void
.end method

.method public h()I
    .locals 0

    iget p0, p0, Lv5d;->f:I

    return p0
.end method
