.class public final Lyu0;
.super Lxu0;
.source "SourceFile"


# static fields
.field public static final c:Lyu0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyu0;

    invoke-direct {v0}, Lyu0;-><init>()V

    sput-object v0, Lyu0;->c:Lyu0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lxu0;-><init>()V

    return-void
.end method


# virtual methods
.method public final c([C)V
    .locals 2

    const-string v0, "array"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lxu0;->a([C)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Inconsistent internal invariant: unexpected array size "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d()[C
    .locals 1

    const/16 v0, 0x4000

    invoke-super {p0, v0}, Lxu0;->b(I)[C

    move-result-object p0

    return-object p0
.end method
