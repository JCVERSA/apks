.class public final Lmq4$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmq4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:Lmq4$a;

.field public static final b:Lmq4;

.field public static final c:Lmq4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmq4$a;

    invoke-direct {v0}, Lmq4$a;-><init>()V

    sput-object v0, Lmq4$a;->a:Lmq4$a;

    new-instance v0, Lkq4;

    invoke-direct {v0}, Lkq4;-><init>()V

    sput-object v0, Lmq4$a;->b:Lmq4;

    new-instance v0, Llq4;

    invoke-direct {v0}, Llq4;-><init>()V

    sput-object v0, Lmq4$a;->c:Lmq4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lmq4$a;->d(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lmq4$a;->c(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final c(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static final d(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final e()Lmq4;
    .locals 0

    sget-object p0, Lmq4$a;->c:Lmq4;

    return-object p0
.end method

.method public final f()Lmq4;
    .locals 0

    sget-object p0, Lmq4$a;->b:Lmq4;

    return-object p0
.end method
