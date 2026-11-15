.class public interface abstract Lcom/bytedance/sdk/openadsdk/EjP/TKC/Sj$Sj;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/EjP/TKC/Sj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Sj"
.end annotation


# static fields
.field public static final EjP:Ljava/lang/String;

.field public static final HiB:Ljava/lang/String;

.field public static final Sj:Ljava/lang/String;

.field public static final TKC:Ljava/lang/String;

.field public static final sP:Ljava/lang/String;

.field public static final vS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->kF()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x2

    .line 6
    new-array v2, v1, [Ljava/lang/CharSequence;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v0, v2, v3

    .line 10
    .line 11
    const-string v0, "load_start"

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    aput-object v0, v2, v4

    .line 15
    .line 16
    const-string v0, "_"

    .line 17
    .line 18
    invoke-static {v0, v2}, Ll6/a;->a(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    sput-object v2, Lcom/bytedance/sdk/openadsdk/EjP/TKC/Sj$Sj;->Sj:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->kF()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    new-array v5, v1, [Ljava/lang/CharSequence;

    .line 29
    .line 30
    aput-object v2, v5, v3

    .line 31
    .line 32
    const-string v2, "load_finish"

    .line 33
    .line 34
    aput-object v2, v5, v4

    .line 35
    .line 36
    invoke-static {v0, v5}, Ll6/a;->a(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    sput-object v2, Lcom/bytedance/sdk/openadsdk/EjP/TKC/Sj$Sj;->sP:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->kF()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    new-array v5, v1, [Ljava/lang/CharSequence;

    .line 47
    .line 48
    aput-object v2, v5, v3

    .line 49
    .line 50
    const-string v2, "load_url"

    .line 51
    .line 52
    aput-object v2, v5, v4

    .line 53
    .line 54
    invoke-static {v0, v5}, Ll6/a;->a(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    sput-object v2, Lcom/bytedance/sdk/openadsdk/EjP/TKC/Sj$Sj;->TKC:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->kF()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->ib()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    new-array v6, v1, [Ljava/lang/CharSequence;

    .line 69
    .line 70
    aput-object v2, v6, v3

    .line 71
    .line 72
    aput-object v5, v6, v4

    .line 73
    .line 74
    invoke-static {v0, v6}, Ll6/a;->a(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    sput-object v2, Lcom/bytedance/sdk/openadsdk/EjP/TKC/Sj$Sj;->EjP:Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->kF()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->ib()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    const/4 v6, 0x3

    .line 89
    new-array v7, v6, [Ljava/lang/CharSequence;

    .line 90
    .line 91
    aput-object v2, v7, v3

    .line 92
    .line 93
    aput-object v5, v7, v4

    .line 94
    .line 95
    const-string v2, "show"

    .line 96
    .line 97
    aput-object v2, v7, v1

    .line 98
    .line 99
    invoke-static {v0, v7}, Ll6/a;->a(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    sput-object v2, Lcom/bytedance/sdk/openadsdk/EjP/TKC/Sj$Sj;->HiB:Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->kF()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->ib()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    new-array v6, v6, [Ljava/lang/CharSequence;

    .line 114
    .line 115
    aput-object v2, v6, v3

    .line 116
    .line 117
    aput-object v5, v6, v4

    .line 118
    .line 119
    const-string v2, "progress"

    .line 120
    .line 121
    aput-object v2, v6, v1

    .line 122
    .line 123
    invoke-static {v0, v6}, Ll6/a;->a(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    sput-object v0, Lcom/bytedance/sdk/openadsdk/EjP/TKC/Sj$Sj;->vS:Ljava/lang/String;

    .line 128
    .line 129
    return-void
.end method
