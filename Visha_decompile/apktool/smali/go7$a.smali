.class public abstract Lgo7$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgo7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Lgo7;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgo7;

    invoke-direct {v0}, Lgo7;-><init>()V

    sput-object v0, Lgo7$a;->a:Lgo7;

    return-void
.end method
