.class public final Lif1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lif1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lif1;

    invoke-direct {v0}, Lif1;-><init>()V

    sput-object v0, Lif1;->a:Lif1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Leh5;)Z
    .locals 1

    const-string v0, "type"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljf1;->a(Leh5;)Z

    move-result p0

    return p0
.end method
