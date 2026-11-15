.class public final Lua3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgd;


# static fields
.field public static final a:Lua3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lua3;

    invoke-direct {v0}, Lua3;-><init>()V

    sput-object v0, Lua3;->a:Lua3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Void;
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No methods should be called on this descriptor. Only its presence matters"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public d()Lo54;
    .locals 0

    invoke-static {p0}, Lgd$a;->a(Lgd;)Lo54;

    move-result-object p0

    return-object p0
.end method

.method public f()Ljava/util/Map;
    .locals 0

    invoke-virtual {p0}, Lua3;->a()Ljava/lang/Void;

    const/4 p0, 0x0

    throw p0
.end method

.method public getSource()Lyt9;
    .locals 0

    invoke-virtual {p0}, Lua3;->a()Ljava/lang/Void;

    const/4 p0, 0x0

    throw p0
.end method

.method public getType()Leh5;
    .locals 0

    invoke-virtual {p0}, Lua3;->a()Ljava/lang/Void;

    const/4 p0, 0x0

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "[EnhancedType]"

    return-object p0
.end method
