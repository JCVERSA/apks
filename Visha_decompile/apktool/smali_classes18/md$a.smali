.class public final Lmd$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:Lmd$a;

.field public static final b:Lmd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmd$a;

    invoke-direct {v0}, Lmd$a;-><init>()V

    sput-object v0, Lmd$a;->a:Lmd$a;

    new-instance v0, Lmd$a$a;

    invoke-direct {v0}, Lmd$a$a;-><init>()V

    sput-object v0, Lmd$a;->b:Lmd;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lmd;
    .locals 0

    const-string p0, "annotations"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lmd$a;->b:Lmd;

    goto :goto_0

    :cond_0
    new-instance p0, Lnd;

    invoke-direct {p0, p1}, Lnd;-><init>(Ljava/util/List;)V

    :goto_0
    return-object p0
.end method

.method public final b()Lmd;
    .locals 0

    sget-object p0, Lmd$a;->b:Lmd;

    return-object p0
.end method
