package model;

public class DriverResult {
    int rank;
    String seasonId;
    String driverId;
    String driverName;
    String driverCategory;
    int winCount;
    int totalPoints;

    //Constructor
    public DriverResult() {}

    // Getters and setters
    public int getRank() {
        return rank;
    }
    public void setRank(int rank) {
        this.rank = rank;
    }
    public String getSeasonId() {
        return seasonId;
    }
    public void setSeasonId(String seasonId) {
        this.seasonId = seasonId;
    }
    public String getDriverId() {
        return driverId;
    }
    public void setDriverId(String driverId) {
        this.driverId = driverId;
    }
    public String getDriverName() {
        return driverName;
    }
    public void setDriverName(String driverName) {
        this.driverName = driverName;
    }
    public String getDriverCategory() {
        return driverCategory;
    }
    public void setDriverCategory(String driverCategory) {
        this.driverCategory = driverCategory;
    }
    public int getWinCount() {
        return winCount;
    }
    public void setWinCount(int winCount) {
        this.winCount = winCount;
    }
    public int getTotalPoints() {
        return totalPoints;
    }
    public void setTotalPoints(int totalPoints) {
        this.totalPoints = totalPoints;
    }
}
