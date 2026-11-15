.class public interface abstract Lmd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lqe5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmd$a;,
        Lmd$b;
    }
.end annotation


# static fields
.field public static final u1:Lmd$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lmd$a;->a:Lmd$a;

    sput-object v0, Lmd;->u1:Lmd$a;

    return-void
.end method


# virtual methods
.method public abstract a(Lo54;)Lgd;
.end method

.method public abstract h(Lo54;)Z
.end method

.method public abstract isEmpty()Z
.end method
