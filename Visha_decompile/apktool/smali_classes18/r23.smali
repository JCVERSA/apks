.class public final Lr23;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr23;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr23;

    invoke-direct {v0}, Lr23;-><init>()V

    sput-object v0, Lr23;->a:Lr23;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lrz4;)Lyu4;
    .locals 1

    const-string p0, "indicatorOptions"

    invoke-static {p1, p0}, Ly45;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lrz4;->d()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    new-instance p0, Lfw0;

    invoke-direct {p0, p1}, Lfw0;-><init>(Lrz4;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lzv8;

    invoke-direct {p0, p1}, Lzv8;-><init>(Lrz4;)V

    goto :goto_0

    :cond_1
    new-instance p0, Lvr1;

    invoke-direct {p0, p1}, Lvr1;-><init>(Lrz4;)V

    :goto_0
    return-object p0
.end method
