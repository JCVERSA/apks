.class public final Ltq4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ltq4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltq4;

    invoke-direct {v0}, Ltq4;-><init>()V

    sput-object v0, Ltq4;->a:Ltq4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Loq4;)Z
    .locals 1

    const-string p0, "callType"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "configuration"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const v0, 0x202304

    if-eq p0, v0, :cond_4

    const v0, 0x202369

    if-eq p0, v0, :cond_2

    const v0, 0x2906a5

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Warm"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Loq4;->i()Z

    move-result p0

    goto :goto_1

    :cond_2
    const-string p0, "Cool"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {p2}, Loq4;->c()Z

    move-result p0

    goto :goto_1

    :cond_4
    const-string p0, "Cold"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    :goto_0
    sget-object p0, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown histogram call type: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lxi;->i(Ljava/lang/String;)V

    :cond_5
    const/4 p0, 0x0

    goto :goto_1

    :cond_6
    invoke-interface {p2}, Loq4;->e()Z

    move-result p0

    :goto_1
    return p0
.end method
