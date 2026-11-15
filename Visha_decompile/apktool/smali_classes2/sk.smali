.class public final synthetic Lsk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk;->b:Ljava/lang/String;

    iput-object p2, p0, Lsk;->c:Ljava/lang/String;

    iput p3, p0, Lsk;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lsk;->b:Ljava/lang/String;

    iget-object v1, p0, Lsk;->c:Ljava/lang/String;

    iget p0, p0, Lsk;->d:I

    invoke-static {v0, v1, p0}, Lvk;->h(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
