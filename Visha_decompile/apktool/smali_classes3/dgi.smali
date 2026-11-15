.class public final Ldgi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ldgi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldgi;

    invoke-direct {v0}, Ldgi;-><init>()V

    sput-object v0, Ldgi;->a:Ldgi;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ldgi;
    .locals 1

    sget-object v0, Ldgi;->a:Ldgi;

    return-object v0
.end method
