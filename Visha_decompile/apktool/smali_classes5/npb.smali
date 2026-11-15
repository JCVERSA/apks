.class public final synthetic Lnpb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnpb;->b:Ljava/util/ArrayList;

    iput-boolean p2, p0, Lnpb;->c:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 1

    iget-object v0, p0, Lnpb;->b:Ljava/util/ArrayList;

    iget-boolean p0, p0, Lnpb;->c:Z

    invoke-static {v0, p0, p1}, Lqpb;->b(Ljava/util/ArrayList;ZLjava/io/File;)Z

    move-result p0

    return p0
.end method
