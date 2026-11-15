.class public abstract Lah5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Class;

.field public static final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lkotlin/Metadata;

    sput-object v0, Lah5;->a:Ljava/lang/Class;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lah5;->b:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic a()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lah5;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public static final synthetic b()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lah5;->a:Ljava/lang/Class;

    return-object v0
.end method
