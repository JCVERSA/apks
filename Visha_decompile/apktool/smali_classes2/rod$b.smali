.class public abstract Lrod$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static a:Lrod;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lrod;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrod;-><init>(Lrod$a;)V

    sput-object v0, Lrod$b;->a:Lrod;

    return-void
.end method
