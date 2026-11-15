.class public final Luye;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lenj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltxe;

    invoke-direct {v0}, Ltxe;-><init>()V

    invoke-virtual {v0}, Ltxe;->e()Luye;

    sget v0, Lkfh;->a:I

    const/4 v0, 0x0

    const/16 v1, 0x24

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lenj;Lg1f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luye;->a:Lenj;

    return-void
.end method

.method public static bridge synthetic a(Luye;)Lenj;
    .locals 0

    iget-object p0, p0, Luye;->a:Lenj;

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Luye;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Luye;

    iget-object p0, p0, Luye;->a:Lenj;

    iget-object p1, p1, Luye;->a:Lenj;

    invoke-virtual {p0, p1}, Lenj;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Luye;->a:Lenj;

    invoke-virtual {p0}, Lenj;->hashCode()I

    move-result p0

    return p0
.end method
