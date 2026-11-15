.class public abstract Lwai;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ls8i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lu9i;

    invoke-direct {v0}, Lu9i;-><init>()V

    sput-object v0, Lwai;->a:Ls8i;

    return-void
.end method

.method public static a()Ls8i;
    .locals 1

    sget-object v0, Lwai;->a:Ls8i;

    return-object v0
.end method
