.class public abstract Lao7$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lao7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Lao7;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lao7;

    invoke-direct {v0}, Lao7;-><init>()V

    sput-object v0, Lao7$a;->a:Lao7;

    return-void
.end method
