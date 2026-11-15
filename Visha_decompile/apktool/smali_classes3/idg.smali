.class public Lidg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lhmh;


# direct methods
.method public constructor <init>(Lhmh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lidg;->a:Lhmh;

    return-void
.end method


# virtual methods
.method public a()Lhnh;
    .locals 0

    iget-object p0, p0, Lidg;->a:Lhmh;

    iget-object p0, p0, Lhmh;->V:Lhnh;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public c()Lorg/json/JSONObject;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public d()Z
    .locals 0

    iget-object p0, p0, Lidg;->a:Lhmh;

    iget-boolean p0, p0, Lhmh;->T:Z

    return p0
.end method

.method public e()Z
    .locals 0

    iget-object p0, p0, Lidg;->a:Lhmh;

    iget-boolean p0, p0, Lhmh;->K:Z

    return p0
.end method

.method public f()Z
    .locals 0

    iget-object p0, p0, Lidg;->a:Lhmh;

    iget-boolean p0, p0, Lhmh;->J:Z

    return p0
.end method

.method public g()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
