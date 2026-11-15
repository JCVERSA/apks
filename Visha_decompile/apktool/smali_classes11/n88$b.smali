.class public abstract Ln88$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln88;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Ln88;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln88;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln88;-><init>(Lo88;)V

    sput-object v0, Ln88$b;->a:Ln88;

    return-void
.end method

.method public static bridge synthetic a()Ln88;
    .locals 1

    sget-object v0, Ln88$b;->a:Ln88;

    return-object v0
.end method
