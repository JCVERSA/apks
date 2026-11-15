.class public abstract Lps1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lps1;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public static a()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lps1;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static b(Ljava/util/ArrayList;)V
    .locals 1

    sget-object v0, Lps1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lps1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
