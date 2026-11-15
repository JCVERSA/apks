.class public abstract Lcr7$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcr7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static a:Lcr7;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcr7;

    invoke-direct {v0}, Lcr7;-><init>()V

    sput-object v0, Lcr7$b;->a:Lcr7;

    return-void
.end method
