import matplotlib.pyplot as plt

# Дані
years = [2020, 2021, 2022, 2023, 2024]

asia_pacific = [28, 32, 35, 39, 43]   # Азійсько-Тихоокеанський регіон
global_avg = [15, 17, 19, 21, 24]     # Глобальний середній рівень

# ⬆️ Великий розмір + друкарська якість
plt.figure(figsize=(16, 9), dpi=89)

# Лінії
plt.plot(
    years,
    asia_pacific,
    color="#d62728",
    marker="o",
    linewidth=4,
    markersize=10,
    label="Азійсько-Тихоокеанський регіон (Critical)"
)

plt.plot(
    years,
    global_avg,
    color="#1f77b4",
    linestyle="--",
    marker="s",
    linewidth=4,
    markersize=9,
    label="Глобальний середній рівень (Est.)"
)

# ⬆️ ШРИФТИ (≈ ×3)
plt.xlabel("Рік", fontsize=30)
plt.ylabel("Частка пристроїв із неофіційним ПЗ (%)", fontsize=30)
plt.title("Поширеність неофіційного ПЗ на Android", fontsize=36, pad=25)

plt.xticks(fontsize=26)
plt.yticks(fontsize=26)

# Легенда (велика і читабельна)
plt.legend(fontsize=24, loc="upper left", frameon=True)

# Анотація 2024
plt.annotate(
    "43%\n(Zimperium 2024)",
    xy=(2024, 43),
    xytext=(2023.2, 48),
    fontsize=26,
    fontweight="bold",
    color="#d62728",
    arrowprops=dict(arrowstyle="->", linewidth=2, color="black"),
    bbox=dict(boxstyle="round,pad=0.4", fc="white", ec="#d62728", lw=2)
)

# Сітка
plt.grid(True, linestyle="--", alpha=0.4)

# Пояснювальний підпис унизу
plt.text(
    0.5,
    -0.15,
    "Масштаб протидії: Google Play Protect сканує понад 200 млрд застосунків щодня",
    fontsize=22,
    ha="center",
    va="center",
    transform=plt.gca().transAxes
)

plt.tight_layout()

# 💾 Зберегти у максимальній якості
plt.savefig("android_unofficial_software_trend_high_quality.png",
            dpi=300, bbox_inches="tight")

plt.show()
