//
//  ViewController.swift
//  lab-tunley
//
//  Created by Charlie Hieger on 12/1/22.
//

import UIKit
import Nuke

class TracksViewController: UIViewController, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tracks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TrackCell", for: indexPath) as! TrackCell

        // Get the track that corresponds to the table view row
        let track = tracks[indexPath.row]

        // Configure the cell with it's associated track
        cell.configure(with: track)

        // return the cell for display in the table view
        return cell
        
    }
    
    

    // TODO: Pt 1 - Add a tracks property
    var tracks: [Track] = []
    // TODO: Pt 1 - Add table view outlet
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tracks = Track.mockTracks
        print(tracks)        // TODO: Pt 1 - Set tracks property with mock tracks array

        tableView.dataSource = self
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let cell = sender as? UITableViewCell,
            // Get the index path of the cell from the table view
            let indexPath = tableView.indexPath(for: cell),
            // Get the detail view controller
            let detailViewController = segue.destination as? DetailViewController {

             // Use the index path to get the associated track
             let track = tracks[indexPath.row]

             // Set the track on the detail view controller
             detailViewController.track = track
         }

    }

    // TODO: Pt 1 - Add table view data source methods


}
