.class public Lbp1$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbp1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Lvk8;

.field public final b:Z


# direct methods
.method public constructor <init>(Lvk8;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lbp1$c;->a:Lvk8;

    .line 4
    iput-boolean p2, p0, Lbp1$c;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(Lvk8;ZLbp1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lbp1$c;-><init>(Lvk8;Z)V

    return-void
.end method

.method public static synthetic a(Lbp1$c;)Z
    .locals 0

    iget-boolean p0, p0, Lbp1$c;->b:Z

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lbp1$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lbp1$c;

    iget-object v0, p1, Lbp1$c;->a:Lvk8;

    iget-object v2, p0, Lbp1$c;->a:Lvk8;

    invoke-virtual {v0, v2}, Lvk8;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Lbp1$c;->b:Z

    iget-boolean p0, p0, Lbp1$c;->b:Z

    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lbp1$c;->a:Lvk8;

    invoke-virtual {v0}, Lvk8;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-boolean p0, p0, Lbp1$c;->b:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method
