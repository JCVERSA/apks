.class public interface abstract Ley0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ley0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ll9a;

    invoke-direct {v0}, Ll9a;-><init>()V

    sput-object v0, Ley0;->a:Ley0;

    return-void
.end method


# virtual methods
.method public abstract createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lxn4;
.end method

.method public abstract elapsedRealtime()J
.end method

.method public abstract onThreadBlocked()V
.end method

.method public abstract uptimeMillis()J
.end method
