.class public final synthetic Lrpf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7i;


# instance fields
.field public final synthetic a:Lwpf;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lwpf;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrpf;->a:Lwpf;

    iput-object p2, p0, Lrpf;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lim5;
    .locals 1

    iget-object v0, p0, Lrpf;->a:Lwpf;

    iget-object p0, p0, Lrpf;->b:Ljava/lang/String;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p0, p1}, Lwpf;->c(Lwpf;Ljava/lang/String;Ljava/lang/Throwable;)Lim5;

    move-result-object p0

    return-object p0
.end method
