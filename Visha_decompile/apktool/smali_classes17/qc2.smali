.class public interface abstract Lqc2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqc2$a;
    }
.end annotation


# static fields
.field public static final A1:Lqc2;

.field public static final z1:Lqc2$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lqc2$a;->a:Lqc2$a;

    sput-object v0, Lqc2;->z1:Lqc2$a;

    new-instance v0, Lpc2;

    invoke-direct {v0}, Lpc2;-><init>()V

    sput-object v0, Lqc2;->A1:Lqc2;

    return-void
.end method

.method public static u()V
    .locals 0

    return-void
.end method

.method public static synthetic y()V
    .locals 0

    invoke-static {}, Lqc2;->u()V

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method
