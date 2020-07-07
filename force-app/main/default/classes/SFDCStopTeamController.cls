/*
*	Author:- Wilson Xu
*	Description:- This is the controller class for SFDC Stop Team Component
*	Created:- 07-07-2020
*	Last Updated:- 07-07-2020
*   Change Log:-
*   SNo.        Name        Date        Description
*/
public class SFDCStopTeamController {

    public class Contributor {

        public String name;
        public String picURL;
        public Date contributionDate;
        public String trailheadURL;

        public Contributor(String name, String picURL, Date contributionDate, String trailheadURL) {
            this.name = name;
            this.picURL = picURL;
            this.contributionDate = contributionDate;
            this.trailheadURL = trailheadURL;
        }
    }

    /*
    *	Author:- Wilson Xu
    *	Description:- This method is used to return contributors data
    */
    @AuraEnabled(cacheable=true)
    public static String getContributors() {
        List<Contributor> sfdcstopContributors = new List<Contributor>();
        sfdcstopContributors.add(
            new Contributor(
                'Rahul Malhotra',
                'https://pbs.twimg.com/profile_images/1208356452160589824/qLtb5g9P_400x400.jpg',
                Date.newInstance(2020, 06, 21),
                'https://trailblazer.me/id/rahulmalhotra'
            )
        );
        sfdcstopContributors.add(
            new Contributor(
                'Wilson Xu',
                'https://avatars0.githubusercontent.com/u/64681675?s=460&u=ef4a86c29e5a0baf1d9baf54a71e26ef43415c1b&v=4',
                Date.newInstance(2020, 07, 07),
                'https://trailblazer.me/id/wilsoxu'
            )
        );
        return JSON.serialize(sfdcstopContributors);
    }
}