.class public interface abstract Lhu4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhu4$b;,
        Lhu4$c;,
        Lhu4$a;
    }
.end annotation


# static fields
.field public static final a:Lrk5;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lrk5;

    new-instance v1, Lgu4;

    invoke-direct {v1}, Lgu4;-><init>()V

    const-string v2, "tech.palm.cloud.RemoteManager"

    const-class v3, Lhu4;

    invoke-direct {v0, v2, v3, v1}, Lrk5;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/function/Supplier;)V

    sput-object v0, Lhu4;->a:Lrk5;

    return-void
.end method

.method public static a()Lhu4;
    .locals 1

    sget-object v0, Lhu4;->a:Lrk5;

    invoke-virtual {v0}, Lrk5;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhu4;

    return-object v0
.end method


# virtual methods
.method public b(Landroid/content/Context;Z[ILhu4$b;)V
    .locals 0

    return-void
.end method

.method public c(Landroid/content/Context;Lhu4$c;)V
    .locals 0

    return-void
.end method
