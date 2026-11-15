.class public abstract Lhyi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lhxi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lhxi;

    invoke-direct {v0}, Lhxi;-><init>()V

    sput-object v0, Lhyi;->a:Lhxi;

    return-void
.end method

.method public static a()Lhxi;
    .locals 1

    sget-object v0, Lhyi;->a:Lhxi;

    return-object v0
.end method
