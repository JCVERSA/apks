.class public final synthetic Ly9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lz9;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lz9;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly9;->b:Lz9;

    iput-object p2, p0, Ly9;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ly9;->b:Lz9;

    iget-object p0, p0, Ly9;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Lz9;->a(Lz9;Ljava/lang/String;)V

    return-void
.end method
