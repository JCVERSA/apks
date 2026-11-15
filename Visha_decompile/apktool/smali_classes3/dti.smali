.class public abstract Ldti;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcti;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lxti;->c:Lxti;

    new-instance v0, Lcti;

    invoke-direct {v0}, Lcti;-><init>()V

    sput-object v0, Ldti;->a:Lcti;

    return-void
.end method

.method public static a()Lcti;
    .locals 1

    sget-object v0, Ldti;->a:Lcti;

    return-object v0
.end method
