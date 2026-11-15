.class public abstract Lk29$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk29;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# static fields
.field public static final a:Lio/reactivex/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ln07;

    invoke-direct {v0}, Ln07;-><init>()V

    sput-object v0, Lk29$e;->a:Lio/reactivex/Scheduler;

    return-void
.end method
