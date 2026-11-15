.class public final Lfy7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lfy7;

.field public static b:[Ljava/lang/String;

.field public static c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfy7;

    invoke-direct {v0}, Lfy7;-><init>()V

    sput-object v0, Lfy7;->a:Lfy7;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lfy7;->b:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lfy7;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "path"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lfy7;->b:[Ljava/lang/String;

    invoke-static {v0, p0}, Lhi;->P([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "path"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lfy7;->c:[Ljava/lang/String;

    invoke-static {v0, p0}, Lhi;->P([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
